from django.db.models import query
from config.pagination import CustomPageNumberPagination
from school.utils import get_record, get_classroom, get_course, get_file as get_studydocument, delete_file
from students.utils import get_student, get_grade, get_conduct
from teachers.utils import get_current_teacher
from students.serializers import GradeSerializer, StudentSerializer, ConductSerializer
from school.serializers import RecordSerializer, StudyDocumentSerializer, TeachingInfoSerializer, TimetableSerializer, DeviceSerializer, DeviceManageSerializer, ClassroomSerializer
from students.models import Grade, Student, Conduct
from teachers.models import Teacher
from school.models import ClassRecord, Classroom, Course, StudyDocument, TeachingInfo, Timetable, Device, DeviceManage
from .serializers import TeacherSerializer

from accounts.permissions import IsTeacher
from config.pagination import Pagination, PaginationHandlerMixin

from rest_framework import exceptions, filters
from rest_framework import serializers, status
from rest_framework.views import APIView
from rest_framework.parsers import FileUploadParser, JSONParser, MultiPartParser
from rest_framework import generics, mixins
from rest_framework.response import Response
from django_filters.rest_framework import DjangoFilterBackend
from rest_framework.exceptions import ParseError
from rest_framework.decorators import api_view, permission_classes
from rest_framework.permissions import IsAdminUser, IsAuthenticated

from datetime import datetime
from config import settings
import os
import mimetypes
from django.http import HttpResponse

from drf_yasg.utils import swagger_auto_schema
from drf_yasg import openapi
from students.schema import GRADE_PROP, GRADE_CHANGE_PROP, CONDUCT_CHANGE_PROP
from school.schema import CLASSRECORD_CHANGE_PROP, TEACHER_STUDY_DOC_PROP, TEACHER_STUDY_DOC_REQUIRED, TEACHER_DEVICE_MANAGE_PROP, TEACHER_DEVICE_MANAGE_REQUIRED

from config.settings import REST_FRAMEWORK

ORDERING_PARAM = REST_FRAMEWORK['ORDERING_PARAM']

EXPIRED_DAYS = 30 * 2

# # Create your views here.


class TeacherView(APIView):
    permission_classes = [IsAuthenticated]

    def get(self, request):
        user = request.user
        try:
            teacher = Teacher.objects.get(account=user)
            serializer = TeacherSerializer(teacher)
            return Response(serializer.data)
        except Exception:
            raise serializers.ValidationError('Your account is don\'t have permissions to acess this information')


# # Show class, course , ... which current teacher teaches
class TeachingInfoView(generics.ListAPIView):
    permission_classes = [IsAuthenticated]
    queryset = Timetable.objects.all()
    serializer_class = TeachingInfoSerializer
    filter_backends = (DjangoFilterBackend, filters.SearchFilter, filters.OrderingFilter)
    ordering_fields = ['school_year', 'semester', 'teacher__person', 'id']
    filter_fields = ('classroom_id', 'course_id', )

    def get_queryset(self):
        user = self.request.user
        try:
            teacher = Teacher.objects.get(account=user)
        except Exception:
            raise serializers.ValidationError('Your account is don\'t have permissions to acess this information')

        this_school_year = Timetable.objects.order_by('-school_year').first().school_year
        this_semester = Timetable.objects.order_by('-semester').first().semester
        teching_info_list = Timetable.objects.filter(teacher=teacher, school_year=this_school_year, semester=this_semester)
        return teching_info_list


# # Show list of students in a class
class ClassView(APIView):
    permission_classes = [IsAuthenticated]

    def get(self, request, pk):
        user = request.user
        try:
            teacher = Teacher.objects.get(account=user)
        except Exception:
            raise serializers.ValidationError('Your account is don\'t have permissions to acess this information')

        #check whether is the home teacher or teach this class
        if not teacher.home_class.filter(id=pk).exists():
            if not teacher.timetables.filter(classroom_id=pk).exists():
                raise serializers.ValidationError('You don\'t teach this class')

        classroom = get_classroom(pk)
        sort = request.query_params.get(ORDERING_PARAM)

        serializer = ClassroomSerializer(classroom)
        return Response(serializer.data)



# # Show list of student's grade of a course in a class
class StudentGradeView(APIView, PaginationHandlerMixin):
    permission_classes = [IsAuthenticated]
    pagination_class = Pagination

    @swagger_auto_schema(
        manual_parameters=[
            openapi.Parameter('course_id', openapi.IN_QUERY, description="Course id", type=openapi.TYPE_INTEGER),
        ]
    )
    def get(self, request, pk):
        user = request.user
        try:
            teacher = Teacher.objects.get(account=user)
        except Exception:
            raise serializers.ValidationError('Your account is don\'t have permissions to acess this information')

        course_id = request.query_params.get('course_id')

        #check whether teach this class

        this_school_year = Timetable.objects.order_by('-school_year').first().school_year
        this_semester = Timetable.objects.order_by('-semester').first().semester
        if teacher.timetables.filter(classroom_id=pk, school_year=this_school_year, semester=this_semester).exists():
            grades = Grade.objects.all().filter(student__classroom_id=pk,
                                                   school_year=this_school_year,
                                                   semester=this_semester)
            if course_id:
                grades = grades.filter(course_id=course_id)

            grades = grades.order_by('student__person__first_name')


        else:
            return Response('You don\'t teach this class this semester and school_year', status=status.HTTP_400_BAD_REQUEST)

        serializer = GradeSerializer(grades, many=True)
        page = self.paginate_queryset(grades)
        if page is not None:
            serializer = self.get_paginated_response(GradeSerializer(page, many=True).data)
        return Response(serializer.data)


    @swagger_auto_schema(
        manual_parameters=[openapi.Parameter('grade_id', openapi.IN_QUERY, type=openapi.TYPE_INTEGER, description='Grade id')],
        request_body=openapi.Schema(
            type=openapi.TYPE_OBJECT,
            properties=GRADE_CHANGE_PROP
        ),

    )
    def put(self, request, pk):
        user = request.user
        try:
            teacher = Teacher.objects.get(account=user)
        except Exception:
            raise serializers.ValidationError('Your account is don\'t have permissions to acess this information')
        if 'start_update' in request.data.keys():
                return Response('You have no right to update start_update field', status=status.HTTP_400_BAD_REQUEST)

        this_school_year = Timetable.objects.order_by('-school_year').first().school_year
        this_semester = Timetable.objects.order_by('-semester').first().semester
        if not teacher.timetables.filter(classroom_id=pk, school_year=this_school_year, semester=this_semester).exists():
            return Response('You don\'t teach this class this semester and school_year', status=status.HTTP_400_BAD_REQUEST)

        grade_id = request.query_params.get('grade_id')
        if grade_id:
            grade = get_grade(grade_id)
            start_update = grade.start_update
            now = datetime.now()

            if (now - start_update).days > EXPIRED_DAYS:
                return Response('Time to update student score has expired', status=status.HTTP_400_BAD_REQUEST)

            serializer = GradeSerializer(grade, data=request.data, partial=True)
            try:
                serializer.is_valid(raise_exception=True)
                serializer.save()
                return Response(serializer.data)
            except serializers.ValidationError:
                return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)
        else:
            return Response('id query param need to be provided', status=status.HTTP_400_BAD_REQUEST)


# Show list classrecord
class ClassRecordView(APIView):
    permission_classes = [IsAuthenticated]

    @swagger_auto_schema(
            manual_parameters=[openapi.Parameter('study_week', openapi.IN_QUERY, type=openapi.TYPE_INTEGER, description='Study week')],
    )
    def get(self, request, pk):
        user = request.user
        try:
            teacher = Teacher.objects.get(account=user)
        except Exception:
            raise serializers.ValidationError('Your account is don\'t have permissions to acess this information')

        this_school_year = Timetable.objects.order_by('-school_year').first().school_year
        this_semester = Timetable.objects.order_by('-semester').first().semester
        if teacher.timetables.filter(classroom_id=pk, school_year=this_school_year, semester=this_semester).exists():
            records = ClassRecord.objects.filter(classroom_id=pk,
                                                 school_year=this_school_year,
                                                 semester=this_semester)

        else:
            return Response('You don\'t teach this class this semester and school_year', status=status.HTTP_400_BAD_REQUEST)

        serializer = RecordSerializer(records, many=True)
        return Response(serializer.data)

    @swagger_auto_schema(
        manual_parameters=[openapi.Parameter('id', openapi.IN_QUERY, type=openapi.TYPE_INTEGER, description='Record id')],
        request_body=openapi.Schema(
            type=openapi.TYPE_OBJECT,
            properties=CLASSRECORD_CHANGE_PROP
        ),
    )
    def put(self, request, pk):
        user = self.request.user
        try:
            teacher = Teacher.objects.get(account=user)
        except Exception:
            raise serializers.ValidationError('Your account is don\'t have permissions to acess this information')

        this_school_year = Timetable.objects.order_by('-school_year').first().school_year
        this_semester = Timetable.objects.order_by('-semester').first().semester
        if not teacher.timetables.filter(classroom_id=pk, school_year=this_school_year, semester=this_semester).exists():
            return Response('You don\'t teach this class this semester and school_year', status=status.HTTP_400_BAD_REQUEST)

        id = request.query_params.get('id')
        if id:
            record = get_record(id)
            request.data.update({'teacher': teacher})
            serializer = RecordSerializer(record, data=request.data, partial=True)
            try:
                serializer.is_valid(raise_exception=True)
                serializer.save()
                return Response(serializer.data)

            except serializers.ValidationError as error:
                return Response(error.detail, status=status.HTTP_400_BAD_REQUEST)
        else:
            return Response({'id query param need to be provided'}, status=status.HTTP_400_BAD_REQUEST)


class StudyDocumentView(generics.ListAPIView):
    permission_classes = [IsAuthenticated]
    queryset = StudyDocument.objects.all()
    serializer_class = StudyDocumentSerializer
    pagination_class = CustomPageNumberPagination
    filter_backends = (DjangoFilterBackend, filters.SearchFilter, filters.OrderingFilter)
    filter_fields = ('id', 'classroom_id', 'course_id', )
    ordering_fields = ['classroom__class_name', 'course__course_name',]

    def get_queryset(self):
        user = self.request.user
        try:
            teacher = Teacher.objects.get(account=user)
        except Exception:
            raise serializers.ValidationError('Your account is don\'t have permissions to acess this information')

        studydocument = StudyDocument.objects.all().filter(teacher=teacher).order_by(
            'classroom__class_name',
            'course__course_name'
        )
        return studydocument

    @swagger_auto_schema(
        manual_parameters=[openapi.Parameter('id', openapi.IN_QUERY, type=openapi.TYPE_INTEGER, description='File id')],
    )
    def delete(self, request):
        id = request.query_params.get('id')
        if id:
            delete_file(id)
            return Response({'Delete successful'}, status=status.HTTP_200_OK)
        else:
            return Response({'id query param need to be provided'}, status=status.HTTP_400_BAD_REQUEST)


class UploadStudyDocumentView(APIView):
    permission_classes = [IsAuthenticated]
    parser_classes = (JSONParser, MultiPartParser, FileUploadParser)

    @swagger_auto_schema(
        request_body=openapi.Schema(
            type=openapi.TYPE_OBJECT,
            properties=TEACHER_STUDY_DOC_PROP,
            required=TEACHER_STUDY_DOC_REQUIRED
        ),
    )
    def post(self, request, *args, **kwargs):
        user = request.user
        try:
            teacher = Teacher.objects.get(account=user)
        except Exception:
            raise serializers.ValidationError('Your account is don\'t have permissions to acess this information')

        request.data.update({'teacher_id': teacher.id})
        file_serializer = StudyDocumentSerializer(data=request.data)
        try:
            file_serializer.is_valid(raise_exception=True)
            file_serializer.save()
            return Response(file_serializer.data, status=status.HTTP_200_OK)
        except serializers.ValidationError:
            return Response(file_serializer.errors, status=status.HTTP_400_BAD_REQUEST)


class TimetableView(generics.ListAPIView):
    permission_classes = [IsAuthenticated]
    queryset = Timetable.objects.all()
    serializer_class = TimetableSerializer
    pagination_class = CustomPageNumberPagination
    filter_backends = (DjangoFilterBackend, filters.SearchFilter, filters.OrderingFilter)
    filter_fields = ('school_year', 'semester', 'day_of_week', 'shifts', 'course_id', 'teacher_id', 'classroom_id')
    ordering_fields = ['day_of_week', ]

    def get_queryset(self):
        user = self.request.user
        try:
            teacher = Teacher.objects.get(account=user)
        except Exception:
            raise serializers.ValidationError('Your account is don\'t have permissions to acess this information')
        teacherTimetable = Timetable.objects.filter(teacher=teacher)
        return teacherTimetable

# # ------------------- Co giao chu nhiem ----------------

class MyClassView(APIView):
    permission_classes = [IsAuthenticated]
    def get(self, request):
        user = self.request.user
        try:
            teacher = Teacher.objects.get(account=user)
        except Exception:
            raise serializers.ValidationError('Your account is don\'t have permissions to acess this information')

        if teacher.home_class.exists():
            class_id = teacher.home_class.first().id
            classroom = get_classroom(class_id)
            serializer = ClassroomSerializer(classroom)
            return Response(serializer.data)

        else:
            return Response('You don\'t have any homeclass', status=status.HTTP_404_NOT_FOUND)


class MyClassTimetableView(APIView):
    permission_classes = [IsAuthenticated]

    @swagger_auto_schema(
        manual_parameters=[
            openapi.Parameter('school_year', openapi.IN_QUERY, type=openapi.TYPE_INTEGER, description='School year'),
            openapi.Parameter('semester', openapi.IN_QUERY, type=openapi.TYPE_INTEGER, description='Semester'),
        ],
    )
    def get(self, request):
        user = request.user
        try:
            teacher = Teacher.objects.get(account=user)
        except Exception:
            raise serializers.ValidationError('Your account is don\'t have permissions to acess this information')

        if not teacher.home_class.exists():
            return Response('You don\'t have any homeclass', status=status.HTTP_404_NOT_FOUND)

        classroom = teacher.home_class.first()
        timetables = Timetable.objects.filter(classroom=classroom)

        school_year = request.query_params.get('school_year')
        semester = request.query_params.get('semester')
        if school_year:
            timetables = timetables.filter(school_year=school_year)
        if semester:
            timetables = timetables.filter(semester=semester)

        serializer = TimetableSerializer(timetables, many=True)
        return Response(serializer.data)

class MyClassRecordView(APIView):
    permission_classes = [IsAuthenticated]

    @swagger_auto_schema(
        manual_parameters=[
            openapi.Parameter('school_year', openapi.IN_QUERY, type=openapi.TYPE_INTEGER, description='School year'),
            openapi.Parameter('semester', openapi.IN_QUERY, type=openapi.TYPE_INTEGER, description='Semester'),
            openapi.Parameter('study_week', openapi.IN_QUERY, type=openapi.TYPE_INTEGER, description='Study_week'),
        ],
    )
    def get(self, request):
        user = request.user
        try:
            teacher = Teacher.objects.get(account=user)
        except Exception:
            raise serializers.ValidationError('Your account is don\'t have permissions to acess this information')

        if not teacher.home_class.exists():
            return Response('You don\'t have any homeclass', status=status.HTTP_404_NOT_FOUND)

        classroom = teacher.home_class.first()
        records = ClassRecord.objects.filter(classroom=classroom)

        school_year = request.query_params.get('school_year')
        semester = request.query_params.get('semester')
        study_week = request.query_params.get('study_week')
        if school_year:
            records = records.filter(school_year=school_year)
        if semester:
            records = records.filter(semester=semester)
        if study_week:
            records = records.filter(study_week=study_week)

        serializer = RecordSerializer(records, many=True)
        return Response(serializer.data)

class MyClassGradeView(APIView):
    permission_classes = [IsAuthenticated]

    @swagger_auto_schema(
        manual_parameters=[
            openapi.Parameter('school_year', openapi.IN_QUERY, type=openapi.TYPE_INTEGER, description='School year'),
            openapi.Parameter('semester', openapi.IN_QUERY, type=openapi.TYPE_INTEGER, description='Semester'),
            openapi.Parameter('course_id', openapi.IN_QUERY, type=openapi.TYPE_INTEGER, description='Course id'),
        ],
    )
    def get(self, request):
        user = request.user
        try:
            teacher = Teacher.objects.get(account=user)
        except Exception:
            raise serializers.ValidationError('Your account is don\'t have permissions to acess this information')

        if not teacher.home_class.exists():
            return Response('You don\'t have any homeclass', status=status.HTTP_404_NOT_FOUND)

        classroom = teacher.home_class.first()
        grades = Grade.objects.filter(student__classroom=classroom)

        sort = request.query_params.get('sort')
        school_year = request.query_params.get('school_year')
        semester = request.query_params.get('semester')
        course_id = request.query_params.get('course_id')

        if school_year:
            grades = grades.filter(school_year=school_year)
        if semester:
            grades = grades.filter(semester=semester)
        if course_id:
            grades = grades.filter(course_id=course_id)

        grades = grades.order_by('student__person__first_name')

        serializer = GradeSerializer(grades, many=True)
        return Response(serializer.data)



class MyClassConductView(APIView):
    permission_classes = [IsAuthenticated]

    @swagger_auto_schema(
        manual_parameters=[
            openapi.Parameter('school_year', openapi.IN_QUERY, type=openapi.TYPE_INTEGER, description='School year'),
            openapi.Parameter('semester', openapi.IN_QUERY, type=openapi.TYPE_INTEGER, description='Semester'),
        ],
    )
    def get(self, request):
        user = request.user
        try:
            teacher = Teacher.objects.get(account=user)
        except Exception:
            raise serializers.ValidationError('Your account is don\'t have permissions to acess this information')

        if not teacher.home_class.exists():
            return Response('You don\'t have any homeclass', status=status.HTTP_404_NOT_FOUND)

        school_year = request.query_params.get('school_year')
        semester = request.query_params.get('semester')

        classroom = teacher.home_class.first()
        conducts = Conduct.objects.filter(student__classroom=classroom)

        if school_year:
            conducts = conducts.filter(school_year=school_year)

        if semester:
            conducts = conducts.filter(semester=semester)

        serializer = ConductSerializer(conducts, many=True)
        return Response(serializer.data)


    @swagger_auto_schema(
        manual_parameters=[openapi.Parameter('id', openapi.IN_QUERY, type=openapi.TYPE_INTEGER, description='Conduct id')],
        request_body=openapi.Schema(
            type=openapi.TYPE_OBJECT,
            properties=CONDUCT_CHANGE_PROP
        ),
    )
    def put(self, request):
        user = request.user
        try:
            teacher = Teacher.objects.get(account=user)
        except Exception:
            raise serializers.ValidationError('Your account is don\'t have permissions to acess this information')

        if not teacher.home_class.exists():
            raise serializers.ValidationError('You don\'t have any homeclass')


        id = request.query_params.get('id')
        if id:
            conduct = get_conduct(id)
            serializer = ConductSerializer(conduct, data=request.data, partial=True)
            try:
                serializer.is_valid(raise_exception=True)
                serializer.save()
                return Response(serializer.data, status=status.HTTP_201_CREATED)
            except serializers.ValidationError:
                return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)
        else:
            return Response('id query param need to be provide', status=status.HTTP_400_BAD_REQUEST)



class DeviceView(APIView, PaginationHandlerMixin):
    permission_classes = [IsAuthenticated]
    pagination_class = Pagination

    @swagger_auto_schema(
        manual_parameters=[openapi.Parameter('sort', openapi.IN_QUERY, type=openapi.TYPE_INTEGER, description='device_name, status')],
    )
    def get(self, request):
        user = request.user
        try:
            teacher = Teacher.objects.get(account=user)
        except Exception:
            raise serializers.ValidationError('Your account is don\'t have permissions to acess this information')

        devices = Device.objects.all()

        # Get query param for id or sort
        id = request.query_params.get('id')
        sort = request.query_params.get(ORDERING_PARAM)
        if id:
            devices = devices.filter(id=id)
        if sort:
            devices = devices.order_by(f'{sort}')

        serializer = DeviceSerializer(devices, many=True)
        page = self.paginate_queryset(devices)
        if page:
            serializer = self.get_paginated_response(DeviceSerializer(page, many=True).data)

        return Response(serializer.data)

class DeviceManageView(APIView, PaginationHandlerMixin):
    permission_classes = [IsAuthenticated]
    pagination_class = Pagination

    @swagger_auto_schema(
        manual_parameters=[openapi.Parameter('sort', openapi.IN_QUERY, type=openapi.TYPE_INTEGER, description='week, day_of_week')],
    )
    def get(self, request):
        user = request.user
        try:
            teacher = Teacher.objects.get(account=user)
        except Exception:
            raise serializers.ValidationError('Your account is don\'t have permissions to acess this information')

        sort = request.query_params.get(ORDERING_PARAM)

        device_manages = DeviceManage.objects.filter(teacher=teacher)

        if sort:
            device_manages = device_manages.order_by(f'{sort}')

        serializer = DeviceManageSerializer(device_manages, many=True)
        return Response(serializer.data)


    @swagger_auto_schema(
        request_body=openapi.Schema(
            type=openapi.TYPE_OBJECT,
            properties=TEACHER_DEVICE_MANAGE_PROP,
            required=TEACHER_DEVICE_MANAGE_REQUIRED
        ),
    )
    def post(self, request):
        user = request.user
        try:
            teacher = Teacher.objects.get(account=user)
        except Exception:
            raise serializers.ValidationError('Your account is don\'t have permissions to acess this information')

        request.data.update({"teacher_id": teacher.id})
        serializer = DeviceManageSerializer(data=request.data)
        try:
            serializer.is_valid(raise_exception=True)
            serializer.save()
            return Response(serializer.data, status=status.HTTP_201_CREATED)
        except serializers.ValidationError as error:
            return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)


    @swagger_auto_schema(
        manual_parameters=[openapi.Parameter('id', openapi.IN_QUERY, type=openapi.TYPE_INTEGER, description='Device manage id')],
        request_body=openapi.Schema(
            type=openapi.TYPE_OBJECT,
            properties=TEACHER_DEVICE_MANAGE_PROP)
    )
    def put(self, request):
        user = request.user
        try:
            teacher = Teacher.objects.get(account=user)
        except Exception:
            raise serializers.ValidationError('Your account is don\'t have permissions to acess this information')

        device_manage_id = request.query_params.get('id')
        if device_manage_id:
            device_manage = get_device_manage(device_manage_id)
            serializer = DeviceManageSerializer(device_manage, data=request.data, partial=True)
            try:
                serializer.is_valid(raise_exception=True)
                serializer.save()
                return Response(serializer.data)
            except serializers.ValidationError as error:
                return Response(error.detail, status=status.HTTP_400_BAD_REQUEST)
        else:
            return Response({'id query param need to be provided'}, status=status.HTTP_400_BAD_REQUEST)

    @swagger_auto_schema(
        manual_parameters=[openapi.Parameter('id', openapi.IN_QUERY, type=openapi.TYPE_INTEGER, description='Device manage id')],
    )
    def delete(self, request):
        user = request.user
        try:
            teacher = Teacher.objects.get(account=user)
        except Exception:
            raise serializers.ValidationError('Your account is don\'t have permissions to acess this information')

        device_manage_id = request.query_params.get('id')
        if device_manage_id:
            delete_device_manage(device_manage_id)
            return Response({'Delete successful'})
        else:
            return Response({'device_manage_id query param need to be provided'}, status=status.HTTP_400_BAD_REQUEST)

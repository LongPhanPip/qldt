from rest_framework import serializers

from .models import Classroom, Course, Timetable, ClassRecord, Device, DeviceManage, StudyDocument, TeachingInfo
from teachers.models import Teacher
from students.models import Student

from teachers.serializers import TeacherSerializer, TeacherNameSerializer
from persons.serializers import PersonSerializer, PersonNameSerializer

from .validations import validate_classroom_timetable, validate_teacher_timetable, validate_classroom_record, validate_classroom_attendant, validate_device_manage
import logging
logger = logging.getLogger(__name__)



class StudentClassSerializer(serializers.ModelSerializer):
    person = PersonNameSerializer()
    class Meta:
        model = Student
        fields = ['id', 'person']

class ClassroomSerializer(serializers.ModelSerializer):
    homeroom_teacher_id = serializers.IntegerField(write_only=True)
    students = serializers.SerializerMethodField(read_only=True)
    homeroom_teacher = TeacherNameSerializer(read_only=True)

    class Meta:
        model = Classroom
        ordering = ['students__person__first_name']
        fields = ['id', 'class_name', 'homeroom_teacher_id', 'location', 'students', 'homeroom_teacher']

    def get_students(self, obj):
        students = obj.students.order_by('person__first_name')
        return StudentClassSerializer(students, many=True).data


class CourseSerializer(serializers.ModelSerializer):

    class Meta:
        model = Course
        fields = '__all__'


class TimetableSerializer(serializers.ModelSerializer):
    classroom = ClassroomSerializer(read_only=True)
    teacher = TeacherNameSerializer(read_only=True)
    course = CourseSerializer(read_only=True)
    classroom_id = serializers.IntegerField(write_only=True)
    teacher_id = serializers.IntegerField(write_only=True)
    course_id = serializers.IntegerField(write_only=True)

    class Meta:
        model = Timetable
        fields = ['id', 'day_of_week', 'shifts', 'semester', 'school_year', 'course', 'teacher', 'classroom', 'classroom_id', 'course_id', 'teacher_id']

    def create(self, validated_data):
        classroom_id = validated_data.get('classroom_id')
        teacher_id = validated_data.get('teacher_id')
        day_of_week = validated_data.get('day_of_week')
        shifts = validated_data.get('shifts')
        semester = validated_data.get('semester')
        school_year = validated_data.get('school_year')

        validate_classroom_timetable(classroom_id, day_of_week, shifts, semester, school_year)
        validate_teacher_timetable(teacher_id, day_of_week, shifts, semester, school_year)

        return Timetable.objects.create(**validated_data)

    def update(self, instance, validated_data):
        semester = validated_data.get('semester', instance.semester)
        school_year = validated_data.get('school_year', instance.school_year)
        day_of_week = validated_data.get('day_of_week', instance.day_of_week)
        shifts = validated_data.get('shifts', instance.shifts)
        teacher_id = validated_data.get('teacher_id', instance.teacher_id)
        if teacher_id:
            validate_teacher_timetable(teacher_id, day_of_week, shifts, semester, school_year)
            instance.teacher_id = teacher_id

        instance.semester = semester
        instance.school_year = school_year
        instance.day_of_week = day_of_week
        instance.shifts = shifts
        instance.course_id = validated_data.get('course_id', instance.course_id)
        instance.save()
        return instance


class RecordSerializer(serializers.ModelSerializer):
    classroom = ClassroomSerializer(read_only=True)
    teacher = TeacherNameSerializer(read_only=True)
    course = CourseSerializer(read_only=True)
    classroom_id = serializers.IntegerField(write_only=True)
    teacher_id = serializers.IntegerField(write_only=True, required=False, allow_null=True)
    course_id = serializers.IntegerField(write_only=True, required=False, allow_null=True)
    total_student = serializers.SerializerMethodField()

    class Meta:
        model = ClassRecord
        fields = ['id', 'classroom', 'teacher', 'course', 'day_of_week', 'shifts', 'study_week', 'total_student', 'attendant', 'note', 'semester', 'school_year', 'classification', 'teacher_id', 'course_id', 'classroom_id']

    def create(self, validated_data):
        classroom_id = validated_data.get('classroom_id')
        day_of_week = validated_data.get('day_of_week')
        shifts = validated_data.get('shifts')
        study_week = validated_data.get('study_week')
        semester = validated_data.get('semester')
        school_year = validated_data.get('school_year')
        attendant = validated_data.get('attendant')

        validate_classroom_record(classroom_id, day_of_week, shifts, study_week, semester, school_year)
        if attendant:
            validate_classroom_attendant(classroom_id, attendant)

        return ClassRecord.objects.create(**validated_data)

    def update(self, instance, validated_data):
        instance.teacher_id = validated_data.get('teacher_id', instance.teacher_id)
        instance.course_id = validated_data.get('course_id', instance.course_id)

        try:
            attendant = validated_data.pop('attendant')
            validate_classroom_attendant(instance.classroom_id, attendant)
        except KeyError:
            pass

        instance.attendant = validated_data.get('attendant', instance.attendant)
        instance.classification = validated_data.get('classification', instance.classification)
        instance.note = validated_data.get('note', instance.note)
        instance.save()
        return instance

    def get_total_student(self, obj):
        total = obj.classroom.students.count()
        return total


class DeviceManageSerializer(serializers.ModelSerializer):
    device_id = serializers.IntegerField(write_only=True)
    teacher_id = serializers.IntegerField(write_only=True)
    teacher = TeacherNameSerializer(read_only=True)

    class Meta:
        model = DeviceManage
        fields = ['id', 'day_of_week', 'week', 'shifts', 'teacher_id', 'device_id', 'teacher']

    def create(self, validated_data):
        device_id = validated_data.get('device_id')
        week = validated_data.get('week')
        day_of_week = validated_data.get('day_of_week')
        shifts = validated_data.get('shifts')
        validate_device_manage(device_id, week, day_of_week, shifts)
        return DeviceManage.objects.create(**validated_data)

    def update(self, instance, validated_data):
        teacher_id = validated_data.get('teacher_id', instance.account_id)
        week = validated_data.get('week', instance.week)
        day_of_week = validated_data.get('day_of_week', instance.day_of_week)
        shifts = validated_data.get('shifts', instance.shifts)

        validate_device_manage(instance.device_id, week, day_of_week, shifts)

        instance.teacher_id = teacher_id
        instance.week = week
        instance.day_of_week = day_of_week
        instance.shifts = shifts

        instance.save()
        return instance


class DeviceSerializer(serializers.ModelSerializer):
    device_manages = DeviceManageSerializer(many=True, read_only=True)

    class Meta:
        model = Device
        fields = ['id', 'status', 'device_name', 'device_manages', 'price']


class StudyDocumentSerializer(serializers.ModelSerializer):
    teacher_id = serializers.IntegerField()
    course_id = serializers.IntegerField()
    classroom_id = serializers.IntegerField()

    class Meta:
        model = StudyDocument
        fields = ['id', 'name', 'file', 'study_week', 'teacher_id', 'course_id', 'classroom_id']
        extra_kwargs = {'file': {'write_only': True}}


class TeachingInfoSerializer(serializers.ModelSerializer):
    teacher_id = serializers.IntegerField()
    course_id = serializers.IntegerField()
    classroom_id = serializers.IntegerField()
    class Meta:
        model = TeachingInfo
        fields = ['id', 'school_year', 'semester', 'classroom_id', 'teacher_id', 'course_id']

# from os import name
from django.urls import path
from .views import TeachingInfoView, ClassView, StudentGradeView, ClassRecordView, StudyDocumentView, UploadStudyDocumentView, TimetableView, ClassTimetableView, StudentConductView, DeviceView, DeviceManageView, TeacherView

urlpatterns = [

    path('info', TeacherView.as_view()),
    path('teaching_info', TeachingInfoView.as_view(), name='teaching_information'),

    path('classes/<int:pk>', ClassView.as_view(), name='list_student_of_class'),
    path('classes/<int:pk>/grades',StudentGradeView.as_view(), name='list_student_grade_of_class'),
    path('classes/<int:pk>/records', ClassRecordView.as_view(), name='list_classrecord'),

    path('myclass/conduct', StudentConductView.as_view()),
    path('myclass/timetable', ClassTimetableView.as_view()),

    path('documents',StudyDocumentView.as_view(), name='list_study_document'),
    path('upload', UploadStudyDocumentView.as_view(), name='upload_study_document'),
    path('device_manage', DeviceManageView.as_view()),
    path('devices', DeviceView.as_view()),

    path('timetable', TimetableView.as_view(), name='teacher_timetable'),
]

from django.urls import path
from .views import *

urlpatterns = [
    # admin account

    # account
    path('account', ListAccountView.as_view()),
    path('account/<int:pk>', AccountView.as_view()),
    path('account/signup', RegisterView.as_view()),
    path('permissions', PermissionView.as_view()),

    # student
    path('students', StudentView.as_view()),
    path('students/grades', StudentGradeView.as_view()),
    path('students/conducts', StudentConductView.as_view()),

    # parent
    path('parents', ParentView.as_view()),

    # teacher
    path('teachers', TeacherView.as_view()),
    path('teaching_info', TeachingInfoView.as_view()),

    # classroom
    path('classes', ClassroomView.as_view()),
    path('classes/records', ClassRecordView.as_view()),

    path('timetable', TimetableView.as_view()),
    path('timetable/search/details', SearchTimetableView.as_view()),

    # course
    path('courses', CourseView.as_view()),

    # achievements
    path('achievements', AchievementView.as_view()),
    path('achievements/students', StudentAchievementView.as_view()),
    path('achievements/teachers', TeacherAchievementView.as_view()),

    # device
    path('devices', DeviceView.as_view()),
    path('device_manage', DeviceManageView.as_view()),

    # file
    path('studydoc', StudyDocumentView.as_view()),
    path('download/<int:pk>', download)
]

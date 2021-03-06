from rest_framework import serializers
from django.contrib.auth import password_validation
from persons.serializers import AchievementSerializer

from students.models import Student
from persons.models import Achievement
from teachers.models import Teacher

from persons.utils import get_achievement
from students.utils import get_student

import logging
logger = logging.getLogger(__name__)


class SetPasswordSerializer(serializers.Serializer):
    new_password = serializers.CharField(required=True, write_only=True)

    def validate_new_password(self, value):
        password_validation.validate_password(value)
        return value


class GenerralAchievementSerializer(serializers.ModelSerializer):
    achievement_id = serializers.PrimaryKeyRelatedField(source='achievements',
                                                        many=True,
                                                        queryset=Achievement.objects.all())

    def create(self, validated_data):
        pass

    def update(self, instance, validated_data):
        instance.achievements.clear()
        for achievement in validated_data.pop('achievements'):
            instance.achievements.add(achievement)

        instance.save()

        return instance


class StudentAchievementSerializer(GenerralAchievementSerializer):
    student_id = serializers.IntegerField(source='id', read_only=True)

    class Meta:
        model = Student
        fields = ['student_id', 'achievement_id']


class TeacherAchievementSerializer(GenerralAchievementSerializer):
    teacher_id = serializers.IntegerField(source='id', read_only=True)

    class Meta:
        model = Teacher
        fields = ['teacher_id', 'achievement_id']

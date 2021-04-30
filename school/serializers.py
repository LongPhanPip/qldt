from rest_framework import serializers
from .models import Classroom
from teachers.serializers import TeacherSerializer


class ClassroomSerializer(serializers.ModelSerializer):
    homeroom_teacher_id = serializers.IntegerField()

    class Meta:
        model = Classroom
        fields = ['id', 'class_name', 'homeroom_teacher_id', 'location']

    def create(self, validated_data):
        return Classroom.objects.create(**validated_data)
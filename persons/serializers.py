from rest_framework import serializers
from .models import PersonInfo, Achievement, Health, GENDERS


class PersonNameSerializer(serializers.ModelSerializer):
    class Meta:
        model = PersonInfo
        fields = ['first_name', 'last_name']

class PersonSerializer(serializers.ModelSerializer):
    class Meta:
        model = PersonInfo
        fields = '__all__'


class AchievementSerializer(serializers.ModelSerializer):
    class Meta:
        model = Achievement
        fields = '__all__'


class HealthSerializer(serializers.ModelSerializer):
    class Meta:
        model = Health
        fields = '__all__'

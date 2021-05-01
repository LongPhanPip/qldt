from .models import Student, Parent, Grade
from rest_framework import exceptions


def get_student(pk):
    try:
        student = Student.objects.get(pk=pk)
        return student
    except Student.DoesNotExist:
        raise exceptions.NotFound('Student does not exist')


def get_parent(pk):
    try:
        parent = Parent.objects.get(pk=pk)
        return student
    except Parent.DoesNotExist:
        raise exceptions.NotFound('Parent does not exist')


def get_grade(student, pk):
    try:
        return student.grades.get(pk=pk)
    except Grade.DoesNotExist:
        raise exceptions.NotFound('Grade does not exist')

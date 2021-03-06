from .models import Student, Parent, Grade, Conduct
from rest_framework import exceptions


def get_student(pk):
    try:
        student = Student.objects.get(pk=pk)
        return student
    except Student.DoesNotExist:
        raise exceptions.NotFound('Student does not exist')


def delete_student(pk):
    return get_student(pk).delete()


def get_parent(pk):
    try:
        parent = Parent.objects.get(pk=pk)
        return parent
    except Parent.DoesNotExist:
        raise exceptions.NotFound('Parent does not exist')


def delete_parent(pk):
    return get_parent(pk).delete()


def get_grade(pk):
    try:
        return Grade.objects.get(pk=pk)
    except Grade.DoesNotExist:
        raise exceptions.NotFound('Grade does not exist')


def delete_grade(pk):
    return get_grade(pk).delete()

def get_conduct(pk):
    try:
        return Conduct.objects.get(pk=pk)
    except Conduct.DoesNotExist:
        raise exceptions.NotFound('Conduct does not exist')

def delete_conduct(pk):
    return get_conduct(pk).delete()

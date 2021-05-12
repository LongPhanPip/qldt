# Generated by Django 3.2.2 on 2021-05-09 17:33

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('teachers', '0001_initial'),
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.CreateModel(
            name='Classroom',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('class_name', models.CharField(max_length=8)),
                ('location', models.CharField(max_length=16)),
                ('homeroom_teacher', models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, related_name='home_class', to='teachers.teacher')),
            ],
            options={
                'db_table': 'classroom',
            },
        ),
        migrations.CreateModel(
            name='Course',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('course_name', models.CharField(max_length=32)),
            ],
            options={
                'db_table': 'course',
            },
        ),
        migrations.CreateModel(
            name='Device',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('status', models.CharField(choices=[('N', 'New'), ('B', 'Broken'), ('G', 'Good')], default='N', max_length=1)),
                ('device_name', models.CharField(max_length=128)),
            ],
            options={
                'db_table': 'device',
            },
        ),
        migrations.CreateModel(
            name='Timetable',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('day_of_week', models.CharField(choices=[('Mon', 'Monday'), ('Tue', 'Tuesday'), ('Wed', 'Wednesday'), ('Thu', 'Thusday'), ('Fri', 'Friday'), ('Sat', 'Satuday'), ('Sun', 'Sunday')], max_length=3)),
                ('shifts', models.SmallIntegerField()),
                ('classroom', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='timetables', to='school.classroom')),
                ('course', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='timetables', to='school.course')),
                ('teacher', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='timetables', to='teachers.teacher')),
            ],
            options={
                'db_table': 'timetable',
            },
        ),
        migrations.CreateModel(
            name='FileManage',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('name', models.CharField(max_length=128)),
                ('file', models.FileField(upload_to='')),
                ('study_week', models.SmallIntegerField()),
                ('course', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='files', to='school.course')),
                ('teacher', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='files', to='teachers.teacher')),
            ],
            options={
                'db_table': 'file_manage',
            },
        ),
        migrations.CreateModel(
            name='DeviceManage',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('day_of_week', models.CharField(choices=[('Mon', 'Monday'), ('Tue', 'Tuesday'), ('Wed', 'Wednesday'), ('Thu', 'Thusday'), ('Fri', 'Friday'), ('Sat', 'Satuday'), ('Sun', 'Sunday')], max_length=3)),
                ('shift', models.SmallIntegerField()),
                ('account', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='devices', to=settings.AUTH_USER_MODEL)),
                ('device', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='device_manages', to='school.device')),
            ],
            options={
                'db_table': 'device_manage',
            },
        ),
        migrations.CreateModel(
            name='ClassRecord',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('study_week', models.SmallIntegerField()),
                ('attendant', models.SmallIntegerField()),
                ('note', models.TextField(null=True)),
                ('day_of_week', models.CharField(choices=[('Mon', 'Monday'), ('Tue', 'Tuesday'), ('Wed', 'Wednesday'), ('Thu', 'Thusday'), ('Fri', 'Friday'), ('Sat', 'Satuday'), ('Sun', 'Sunday')], max_length=3)),
                ('shifts', models.SmallIntegerField()),
                ('classroom', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='classrecords', to='school.classroom')),
                ('course', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='classrecords', to='school.course')),
                ('teacher', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='classrecords', to='teachers.teacher')),
            ],
            options={
                'db_table': 'class_record',
            },
        ),
    ]
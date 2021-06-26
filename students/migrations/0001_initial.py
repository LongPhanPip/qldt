# Generated by Django 3.2.4 on 2021-06-26 14:55

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('persons', '0001_initial'),
        ('school', '0001_initial'),
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.CreateModel(
            name='Student',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('status', models.CharField(choices=[('DH', 'Dang hoc'), ('DT', 'Dinh chi hoc'), ('TH', 'Thoi hoc')], max_length=2, null=True)),
                ('admission_year', models.SmallIntegerField()),
                ('account', models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, related_name='student', to=settings.AUTH_USER_MODEL)),
                ('achievements', models.ManyToManyField(db_table='student_archivement', related_name='students', to='persons.Achievement')),
                ('classroom', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='students', to='school.classroom')),
                ('health', models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='persons.health')),
                ('person', models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, to='persons.personinfo')),
            ],
            options={
                'db_table': 'student',
            },
        ),
        migrations.CreateModel(
            name='Parent',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('avacation', models.CharField(max_length=128)),
                ('person', models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, to='persons.personinfo')),
                ('students', models.ManyToManyField(db_table='parent_student', related_name='parents', to='students.Student')),
            ],
            options={
                'db_table': 'parent',
            },
        ),
        migrations.CreateModel(
            name='Grade',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('school_year', models.SmallIntegerField()),
                ('semester', models.SmallIntegerField()),
                ('quiz1', models.DecimalField(decimal_places=2, max_digits=3, null=True)),
                ('quiz2', models.DecimalField(decimal_places=2, max_digits=3, null=True)),
                ('quiz3', models.DecimalField(decimal_places=2, max_digits=3, null=True)),
                ('test', models.DecimalField(decimal_places=2, max_digits=3, null=True)),
                ('mid_term_test', models.DecimalField(decimal_places=2, max_digits=3, null=True)),
                ('final_test', models.DecimalField(decimal_places=2, max_digits=3, null=True)),
                ('start_update', models.DateTimeField(null=True)),
                ('course', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='grades', to='school.course')),
                ('student', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='grades', to='students.student')),
            ],
            options={
                'db_table': 'grade',
            },
        ),
        migrations.CreateModel(
            name='Conduct',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('score', models.CharField(choices=[('T', 'Tot'), ('K', 'Kha'), ('TB', 'Trung binh'), ('Y', 'Yeu')], max_length=2, null=True)),
                ('semester', models.SmallIntegerField()),
                ('school_year', models.SmallIntegerField()),
                ('student', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='conduct', to='students.student')),
            ],
            options={
                'db_table': 'conduct',
            },
        ),
    ]

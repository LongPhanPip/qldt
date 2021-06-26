# Generated by Django 3.2.4 on 2021-06-26 14:55

from django.db import migrations, models
import django.utils.timezone
import uuid


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Achievement',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('achievement_name', models.CharField(max_length=128)),
                ('created_at', models.DateTimeField(default=django.utils.timezone.now)),
            ],
            options={
                'db_table': 'achievement',
            },
        ),
        migrations.CreateModel(
            name='Health',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('height', models.SmallIntegerField()),
                ('weight', models.SmallIntegerField()),
                ('eye_sight', models.SmallIntegerField()),
                ('health_status', models.TextField(null=True)),
                ('disease', models.TextField(null=True)),
            ],
            options={
                'db_table': 'health',
            },
        ),
        migrations.CreateModel(
            name='PersonInfo',
            fields=[
                ('id', models.UUIDField(default=uuid.uuid4, editable=False, primary_key=True, serialize=False)),
                ('first_name', models.CharField(max_length=32)),
                ('last_name', models.CharField(max_length=32)),
                ('gender', models.CharField(choices=[('M', 'Nam'), ('F', 'Nu')], max_length=1)),
                ('date_of_birth', models.DateField()),
                ('address', models.CharField(max_length=128)),
                ('ethnicity', models.CharField(max_length=32, null=True)),
                ('religion', models.CharField(max_length=32, null=True)),
                ('phone_number', models.CharField(max_length=11, null=True)),
            ],
            options={
                'db_table': 'person_info',
            },
        ),
    ]

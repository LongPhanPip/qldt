# Generated by Django 3.2.4 on 2021-06-29 12:40

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('students', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='grade',
            name='quiz1',
            field=models.DecimalField(decimal_places=2, max_digits=4, null=True),
        ),
        migrations.AlterField(
            model_name='grade',
            name='quiz2',
            field=models.DecimalField(decimal_places=2, max_digits=4, null=True),
        ),
        migrations.AlterField(
            model_name='grade',
            name='quiz3',
            field=models.DecimalField(decimal_places=2, max_digits=4, null=True),
        ),
        migrations.AlterField(
            model_name='grade',
            name='test',
            field=models.DecimalField(decimal_places=2, max_digits=4, null=True),
        ),
    ]

# Generated by Django 5.1.4 on 2024-12-06 06:02

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('main', '0002_userprofile_achievements_userprofile_target'),
    ]

    operations = [
        migrations.AddField(
            model_name='userprofile',
            name='is_new',
            field=models.BooleanField(default=True),
        ),
    ]

# Generated by Django 4.1.3 on 2023-02-18 10:31

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('base', '0003_remove_submission_userkey_submission_user'),
    ]

    operations = [
        migrations.AlterField(
            model_name='submission',
            name='result',
            field=models.JSONField(blank=True, default=None, null=True),
        ),
        migrations.DeleteModel(
            name='SubmissionResult',
        ),
    ]

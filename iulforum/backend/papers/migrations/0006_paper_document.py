# Generated by Django 3.1.7 on 2021-04-02 10:54

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('papers', '0005_semester_branch'),
    ]

    operations = [
        migrations.AddField(
            model_name='paper',
            name='document',
            field=models.FileField(default='', upload_to='files/'),
            preserve_default=False,
        ),
    ]

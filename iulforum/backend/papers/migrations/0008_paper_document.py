# Generated by Django 3.1.7 on 2021-04-02 11:05

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('papers', '0007_remove_paper_document'),
    ]

    operations = [
        migrations.AddField(
            model_name='paper',
            name='document',
            field=models.FileField(default=False, upload_to='files/'),
            preserve_default=False,
        ),
    ]

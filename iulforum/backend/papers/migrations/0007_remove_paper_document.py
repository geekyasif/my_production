# Generated by Django 3.1.7 on 2021-04-02 11:01

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('papers', '0006_paper_document'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='paper',
            name='document',
        ),
    ]

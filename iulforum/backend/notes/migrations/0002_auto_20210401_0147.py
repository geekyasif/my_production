# Generated by Django 3.1.7 on 2021-03-31 20:17

from django.db import migrations, models
import django.utils.timezone


class Migration(migrations.Migration):

    dependencies = [
        ('notes', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='note',
            name='document',
            field=models.FileField(default=django.utils.timezone.now, upload_to='files/'),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='paper',
            name='document',
            field=models.FileField(default='timezone.now', upload_to='files/'),
            preserve_default=False,
        ),
    ]
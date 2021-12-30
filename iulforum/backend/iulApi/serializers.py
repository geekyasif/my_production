from django.contrib.auth.models import User, Group
from django.db.models import fields
from rest_framework import serializers
from blog.models import Category, Post
from notes.models import Subject, Note
from papers.models import Branch, Semester, Subject, Paper

class PostSerializers(serializers.ModelSerializer):
    class Meta:
        model = Post
        fields = '__all__'

class CategorySerializers(serializers.ModelSerializer):
    class Meta:
        model = Category
        fields = '__all__'

class SubjectSerializers(serializers.ModelSerializer):
    class Meta:
        model = Subject
        fields = '__all__'

class NoteSerializers(serializers.ModelSerializer):
    class Meta:
        model = Note
        fields = '__all__'


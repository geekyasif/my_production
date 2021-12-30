from django.shortcuts import render
from django.http import JsonResponse
from rest_framework import serializers, status
from rest_framework.decorators import api_view
from rest_framework.response import Response
# from snippets.models import Snippet
# from snippets.serializers import SnippetSerializer
from .serializers import CategorySerializers, PostSerializers, SubjectSerializers, NoteSerializers
from blog.models import Post, Category
from notes.models import Subject, Note

# Create your views here.
@api_view(['GET'])
def apiOverview(request):
    api_endpoints = {
        "All Blog Posts": "all-posts/",
        "Post Details By Id" : "",
        "Post Categories" : "post-categories/",
        "Post According to Categories": "",
        "All Notes" : "notes/",
        "Subjects": "subjects/",
        "Notes According Subject wise" : "",
        "Branch" : "",
        "Semesters" : "",
    }
    return Response(api_endpoints)




# ============================ blog post section ===================================
@api_view(['GET'])
def allPosts(request):
    posts = Post.objects.all()
    serializers = PostSerializers(posts, many=True)
    return Response(serializers.data)

# getting post details by id 
# def postDetailsById()

@api_view(['GET'])
def postCategories(request):
    posts = Category.objects.all()
    serializers = CategorySerializers(posts, many=True)
    return Response(serializers.data)

# category details by id 
# def categoryDetailsById()


# getting post according to categoires 


# ================================== notes section ====================================
@api_view(['GET'])
def Subjects(request):
    subjects = Subject.objects.all()
    serializers = SubjectSerializers(subjects, many=True)
    return Response(serializers.data)

@api_view(['GET'])
def Notes(request):
    notes = Note.objects.all()
    serializers = NoteSerializers(notes, many=True)
    return Response(serializers.data)

# getting notes by subject id 
# def getNotesBySubjectId()
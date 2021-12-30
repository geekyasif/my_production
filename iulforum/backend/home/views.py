from django.shortcuts import render, redirect
from django.http import HttpResponse, request
from .forms import FeedbackForm
from .models import Feedback
from blog.models import Post, Category
from notes.models import Note, Subject
from papers.models import Paper

# Create your views here.
def home(request):
    new_feedback = None
    if request.method == "POST":
        feedback_form = FeedbackForm(request.POST)
        if feedback_form.is_valid():
            new_feedback = feedback_form.save(commit=False)
            new_feedback.save()
            feedback_form = FeedbackForm()
    else:
        feedback_form = FeedbackForm()
    context = {
        'feedback_form': feedback_form
    }
    return render(request, "home/index.html", context)

def about(request):
    new_feedback = None
    if request.method == "POST":
        feedback_form = FeedbackForm(request.POST)
        if feedback_form.is_valid():
            new_feedback = feedback_form.save(commit=False)
            new_feedback.save()
            feedback_form = FeedbackForm()
    else:
        feedback_form = FeedbackForm()
    context = {
        'feedback_form': feedback_form
    }
    return render(request, 'home/about.html', context)

def search(request):
    query = request.GET['query']
    if len(query)>75:
        allPosts = []
    else:
        allPosts = Post.objects.filter(
            title__icontains=query,
            description__icontains=query
        )
        # allPostsTitle = Post.objects.filter(title__icontains=query)
        # allPostsContent = Post.objects.filter(description__icontains=query)
        allnotes = Note.objects.filter(title__icontains=query)     
        allpapers = Paper.objects.filter(title__icontains=query)     
        # allPosts = allPostsTitle.union(allPostsContent)
    
    # feedback 
    new_feedback = None
    if request.method == "POST":
        feedback_form = FeedbackForm(request.POST)
        if feedback_form.is_valid():
            new_feedback = feedback_form.save(commit=False)
            new_feedback.save()
            feedback_form = FeedbackForm()
    else:
        feedback_form = FeedbackForm()
    context = {
        'allPosts' : allPosts,
        'allnotes': allnotes,
        'allpapers' : allpapers, 
        'query' : query,
        'feedback_form': feedback_form
    }    
    return render(request, 'home/search.html', context)

# adesense 
#def plain_text_view(request):
 #   file = open('home/ads.txt', 'r')
  #  content = file.read()
   # file.close()
    #return HttpResponse(content, content_type='text/plain')
    
def ads(request):
    content = "google.com, pub-8586139549834082, DIRECT, f08c47fec0942fa0"
    return HttpResponse(content, content_type='text/plain')

def syllabus(request):
    return render(request, "home/syllabus.html")

from django.shortcuts import get_object_or_404, render
from django.http import request
from .models import Subject, Note
from home.forms import FeedbackForm
# Create your views here.

def notesHome(request):
    subjects = Subject.objects.all()
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
        "subjects" : subjects,
        'feedback_form':feedback_form
    }
    return render(request, "notes/subject.html", context)


def notes_download(request, slug):
    subject = get_object_or_404(Subject, slug=slug)
    notes = Note.objects.filter(subject__slug=slug)
    subjects = Subject.objects.all()
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
        "subject" : subject,
        "notes" : notes,
        "subjects" : subjects,
        "feedback_form" : feedback_form

    }
    return render(request, 'notes/download.html', context)
    
def submit_notes(request):
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
        "feedback_form" : feedback_form

    }
    return render(request, 'notes/submit_notes.html', context)
        
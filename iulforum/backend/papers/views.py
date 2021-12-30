from django.shortcuts import render, get_object_or_404
from django.http import request
from . models import Paper, Semester,Branch, Subject
from home.forms import FeedbackForm

# Create your views here.
def papersHome(request):
    branches = Branch.objects.all()
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
        "branches" : branches,
        "feedback_form" : feedback_form
    }
    return render(request, 'paper/branch.html', context)

def branch_detail(request, slug):
    branch = get_object_or_404(Branch, slug=slug)
    semesters = Semester.objects.filter(branch= branch)
    branches = Branch.objects.all()
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
        'branch': branch,
        'semesters' : semesters,
        "branches" : branches,
        "feedback_form" : feedback_form

    }
    return render(request, 'paper/branch_detail.html', context)

def semester_details(request, branch, slug):
    papers_by_semester = get_object_or_404(Semester, branch__slug= branch, slug = slug)
    semesters = Semester.objects.filter(branch__slug= branch)
    papers = Paper.objects.filter(semester = papers_by_semester)
    branches = Branch.objects.all()
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
        "papers_by_semester" : papers_by_semester,
        "papers" : papers,
        "semesters" : semesters,
        "branches" : branches,
        "feedback_form" : feedback_form
    }
    return render(request, 'paper/papers_by_semester.html' , context)


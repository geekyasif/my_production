from django.core import paginator
from django.shortcuts import get_object_or_404, redirect, render
from django.http import HttpResponse, request
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger
from .models import Post, Category, Comment
from .forms import CommentForm
from home.forms import FeedbackForm



# Create your views here.
def blogHome(request):
    allPosts = Post.published.all()
    categories = Category.objects.all()
    paginator = Paginator(allPosts, 12)
    page_number = request.GET.get('page')
    page_obj = paginator.get_page(page_number)
    new_feedback = None
    if request.method == "POST":
        feedback_form = FeedbackForm(request.POST)
        if feedback_form.is_valid():
            new_feedback = feedback_form.save(commit=False)
            new_feedback.save()
            feedback_form = FeedbackForm()
    else:
        feedback_form = FeedbackForm()
    context ={
        'page_obj' : page_obj,
        'categories' : categories,
        'feedback_form' : feedback_form
    }

    return render(request, "blog/blog.html", context)


def post_details(request,post_slug, id=id):
    post = get_object_or_404(Post, id=id,slug=post_slug, status='published')
    
    #list of active comments for this post
    comments = post.comments.filter(active=True)
    new_comment = None

    if request.method == 'POST':
        comment_form = CommentForm(data = request.POST)
        if comment_form.is_valid():
            #create a comment object but don't save to database yet
            new_comment = comment_form.save(commit=False)

            #assign the current post to the comment
            new_comment.post = post
            #save the comment to the database
            new_comment.save()
    else:
        comment_form = CommentForm()

    categories = Category.objects.all()
    allPosts = Post.published.all()
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
        "post" : post,
        'comment_form' : comment_form,
        'new_comment' : new_comment,
        'comments' : comments,
        'allPosts' : allPosts,
        'categories' : categories,
        'feedback_form' : feedback_form
    }
    return render(request, "blog/post.html", context)



def category_details(request , slug):
    cat_details = Category.objects.get(slug = slug)
    categories  = Category.objects.all()
    post = Post.objects.filter(category__slug = slug).all().order_by('created')
    paginator = Paginator(post, 12)
    page_number = request.GET.get('page')
    page_obj = paginator.get_page(page_number)
    #feedback form
    new_feedback = None
    if request.method == "POST":
        feedback_form = FeedbackForm(request.POST)
        if feedback_form.is_valid():
            new_feedback = feedback_form.save(commit=False)
            new_feedback.save()
            feedback_form = FeedbackForm()
    else:
        feedback_form = FeedbackForm()
    context ={
        "cat_details" : cat_details,
        "categories" : categories,
        'page_obj':page_obj,
        'feedback_form' : feedback_form


    }

    return render(request, "blog/category.html", context)



from django.urls import path, include 
from . import views


urlpatterns = [
    path('', views.blogHome, name="blogHome"),
    path('/<str:slug>', views.category_details, name="category_details"),
    path('/<int:id>/<slug:post_slug>', views.post_details, name="post_details"),
]
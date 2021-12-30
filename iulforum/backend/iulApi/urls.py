from django.urls import path, include 
from . import views


urlpatterns = [
    path('', views.apiOverview, name="apiOverview"),
    path('all-posts/', views.allPosts, name="allPosts"),
    path('post-categories/', views.postCategories, name="postCategories"),
    path('subjects/', views.Subjects, name="Subjects"),
    path('notes/', views.Notes, name="Notes"),
]
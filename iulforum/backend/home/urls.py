from django.urls import path, include 
from . import views


urlpatterns = [
    path('', views.home, name="home"),
    path('about/', views.about, name="about"),
    path('search', views.search, name='search'),
    path("ads.txt/", views.ads, name="ads"),
    path("syllabus/", views.syllabus, name="syllabus"),
    #path('ads.txt/', views.plain_text_view, name='ads'),
]
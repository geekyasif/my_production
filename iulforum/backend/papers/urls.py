from django.urls import path, include 
from . import views


urlpatterns = [
    path('', views.papersHome, name="papersHome"),
    path('/<slug:slug>', views.branch_detail, name="branch_detail"),
    path('/<str:branch>/<slug:slug>', views.semester_details, name="semester_details"),
]
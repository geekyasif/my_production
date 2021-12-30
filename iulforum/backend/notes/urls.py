from django.urls import path, include 
from . import views


urlpatterns = [
    path('', views.notesHome, name="notesHome"),
    path('/submit_notes', views.submit_notes, name="submit_notes"),
    path('/<slug:slug>', views.notes_download, name="notes_download"),
]
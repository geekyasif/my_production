from django.db import models
from django.utils.timezone import now
from django.urls import reverse

# Create your models here.
class Subject(models.Model):
    name = models.CharField(max_length=50)
    slug = models.SlugField(max_length=50, unique=True)
    description = models.TextField()
    image = models.ImageField(upload_to="images/")
    timestamp = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.name
    
    def get_absolute_url(self):
        return reverse("notes_download", args=[self.slug])



class Note(models.Model):
    title = models.CharField(max_length=100)
    slug = models.SlugField(max_length=100, unique=True)
    subject = models.ForeignKey("Subject",related_name="notes", on_delete=models.CASCADE)
    document = models.FileField(upload_to="files/", blank=False)
    timestamp = models.DateTimeField(auto_now_add=True)
    
    def __str__(self):
        return self.title 
    

    




from django.db import models
from django.db import models
from django.utils.timezone import now
from django.urls import reverse


# Create your models here.
class Branch(models.Model):
    name = models.CharField( max_length=50)
    slug = models.SlugField(max_length=50, unique=True)
    description = models.TextField(blank = True)
    image = models.ImageField(upload_to='images/')
    timestamp = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.name

    def get_absolute_url(self):
        return reverse("branch_detail", kwargs={"slug": self.slug})
    
    


class Semester(models.Model):
    semester = models.CharField(max_length=50)
    slug = models.SlugField(unique=True, max_length=50)
    branch = models.ForeignKey(Branch, related_name="semester", default="" ,on_delete=models.CASCADE)
    timestamp = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.semester

    def get_absolute_url(self):
        return reverse("semester_details", kwargs={"branch": self.branch.slug, "slug": self.slug})
    

class Subject(models.Model):
    name = models.CharField(max_length=50)
    slug = models.SlugField(unique=True, max_length=50)
    timestamp = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.name

class Paper(models.Model):
    title = models.CharField(max_length=100)
    slug = models.SlugField(unique=True, max_length=100)
    subject = models.ForeignKey(Subject, related_name="paper", on_delete=models.CASCADE)
    semester = models.ForeignKey(Semester, related_name="paper", on_delete=models.CASCADE)
    branch = models.ForeignKey(Branch, related_name="paper", on_delete=models.CASCADE)
    document = models.FileField(upload_to="files/", blank=False)
    timestamp = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.title
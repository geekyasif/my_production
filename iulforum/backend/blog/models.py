from django.db import models
from django.db.models.fields import related
from django.urls import	reverse
from django.contrib.auth.models import User
from django.utils import timezone
from django.utils.timezone import activate, now

# Create your models here.

# creating model for category
class PublishedManager(models.Manager):
    def get_queryset(self):
        return super(PublishedManager,self).get_queryset()\
            .filter(status = 'published')

class Category(models.Model):
    name = models.CharField(max_length=50)
    slug = models.SlugField(max_length=50, unique=True)
    description = models.TextField()
    timestap = models.DateTimeField(auto_now_add=True)

    class Meta:
        verbose_name_plural = "Category"

    def __str__(self):
        return self.name
    
    def get_absolute_url(self):
        return reverse("category_details", args=[str(self.slug)])

# creating model for Post
class Post(models.Model):
    STATUS_CHOICES = (
        ('draft', 'Draft'),
        ('published', 'Published'),
    )
    title = models.CharField(max_length=100)
    slug = models.SlugField(max_length=100, unique=True)
    category = models.ForeignKey("category", related_name="post", on_delete=models.CASCADE)
    author = models.ForeignKey(User, related_name = "post", on_delete=models.CASCADE)
    description = models.TextField()
    image = models.ImageField(upload_to='images/', blank=True)
    publish = models.DateTimeField(default=timezone.now)
    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now_add=True)
    status = models.CharField(max_length = 10, choices = STATUS_CHOICES, default = 'draft')
    objects = models.Manager()
    published = PublishedManager()

    def get_absolute_url(self):
        return reverse("post_details", args=[self.id,self.slug])

    class Meta:
        ordering = ('-publish',)
        def __str__ (self):
            return self.title 
    
class Comment(models.Model):
    post = models.ForeignKey(Post, related_name="comments", on_delete=models.CASCADE)
    name = models.CharField( max_length=50)
    email = models.EmailField(max_length=60)
    comment = models.TextField()
    created = models.DateTimeField(auto_now=True)
    updated = models.DateTimeField(auto_now=True)
    active = models.BooleanField(default=True)

    class Meta:
        ordering = ('created',)

    def __str__(self):
        return 'Comments by {} on {}'.format(self.name, self.post)  

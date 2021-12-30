from django.db import models

# Create your models here.
class Feedback(models.Model):
    name = models.CharField(max_length=50)
    email = models.EmailField(max_length=50)
    subject = models.CharField( max_length=50)
    message = models.TextField()
    date = models.DateTimeField(auto_now=True)

    class Meta:
        ordering = ("date",)

    def __str__(self):
        return "Message by {self.name} and email is {self.email}" 

from django.contrib import admin
from .models import Feedback
# Register your models here.
@admin.register(Feedback)
class ContactAdmin(admin.ModelAdmin):
    list_display = ('name', 'email','subject', 'message', 'date')

from django.contrib import admin
from .models import Paper, Branch, Semester, Subject
# Register your models here.
@admin.register(Branch)
class BranchAdmin(admin.ModelAdmin):
    list_display = ('name',)
    prepopulated_fields = {'slug':('name',)}

@admin.register(Semester)
class SemesterAdmin(admin.ModelAdmin):
    list_display = ('semester',)
    prepopulated_fields = {'slug':('semester',)}

@admin.register(Subject)
class SubjectAdmin(admin.ModelAdmin):
    list_display = ('name',)
    prepopulated_fields = {'slug':('name',)}


@admin.register(Paper)
class PaperAdmin(admin.ModelAdmin):
    list_display = ('title',)
    prepopulated_fields = {'slug': ('title',)}

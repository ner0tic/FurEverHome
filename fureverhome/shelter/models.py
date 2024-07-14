# shelter/models.py

from django.db import models

from media.models import Photo, Video

class Shelter(models.Model):
    name = models.CharField(max_length=100)
    location = models.CharField(max_length=100)
    contact = models.CharField(max_length=100)
    email = models.EmailField()
    phone = models.CharField(max_length=20)
    url = models.CharField(max_length=150)
    capacity = models.PositiveIntegerField()
    photos = models.ManyToManyField(Photo, blank=True)
    videos = models.ManyToManyField(Video, blank=True)

    def __str__(self):
        return self.name

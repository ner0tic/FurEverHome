from django.db import models


class Photo(models.Model):
    url = models.URLField()


class Video(models.Model):
    url = models.URLField()

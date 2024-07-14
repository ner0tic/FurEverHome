# pet/models.py

from django.db import models

from shelter.models import Shelter
from user.models import User
from media.models import Photo, Video


class PetType(models.Model):
    name = models.CharField(max_length=50)

    def __str__(self):
        return self.name


class Breed(models.Model):
    name = models.CharField(max_length=50)
    pet_type = models.ForeignKey(
        PetType, related_name="breeds", on_delete=models.CASCADE
    )

    def __str__(self):
        return f"{self.name} ({self.pet_type.name})"


class Pet(models.Model):
    STATUS_CHOICES = [
        ("Available", "Available"),
        ("Adopted", "Adopted"),
        ("Pending", "Pending"),
    ]
    name = models.CharField(max_length=100)
    age = models.IntegerField()
    # pet_type = models.CharField(max_length=10, choices=[('dog', 'Dog'), ('cat', 'Cat')])
    # breed = models.CharField(max_length=100)
    pet_type = models.ForeignKey(PetType, on_delete=models.CASCADE)
    breed = models.ForeignKey(Breed, on_delete=models.CASCADE)
    description = models.TextField()
    status = models.CharField(max_length=20, choices=STATUS_CHOICES)
    shelter = models.ForeignKey(Shelter, on_delete=models.CASCADE, related_name="pets")
    photos = models.ManyToManyField(Photo, blank=True)
    videos = models.ManyToManyField(Video, blank=True)

    def __str__(self):
        return self.name


class AdoptionApplication(models.Model):
    STATUS_CHOICES = [
        ("Pending", "Pending"),
        ("Approved", "Approved"),
        ("Rejected", "Rejected"),
    ]
    status = models.CharField(max_length=20, choices=STATUS_CHOICES)
    user = models.ForeignKey(
        User, on_delete=models.CASCADE, related_name="applications"
    )
    pet = models.ForeignKey(Pet, on_delete=models.CASCADE, related_name="applications")
    reason_for_adoption = models.TextField()
    previous_pet_experience = models.TextField()
    home_environment = models.TextField()
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    def __str__(self):
        return f"{self.user.username} - {self.pet.name}"


class Review(models.Model):
    rating = models.IntegerField()
    comment = models.TextField()
    user = models.ForeignKey(User, on_delete=models.CASCADE, related_name="reviews")
    shelter = models.ForeignKey(
        Shelter, on_delete=models.CASCADE, related_name="reviews"
    )
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    def __str__(self):
        return f"{self.user.username} - {self.shelter.name}"

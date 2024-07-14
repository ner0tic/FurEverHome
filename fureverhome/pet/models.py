# pet/models.py

from django.db import models
from django.utils.translation import gettext_lazy as _

from core.mixins import models as mixins
from shelter.models import Shelter
from user.models import User
from media.models import Photo, Video


class PetType(
    mixins.NameDescriptionMixin,
    mixins.TimestampMixin,
    mixins.AuditMixin,
    mixins.SlugMixin,
    models.Model,
):
    class Meta:
        verbose_name = _("Pet Type")
        verbose_name_plural = _("Pet Types")

    def __str__(self):
        return f"{self.name}"


class Breed(
    mixins.NameDescriptionMixin,
    mixins.TimestampMixin,
    mixins.AuditMixin,
    mixins.SlugMixin,
    models.Model,
):

    pet_type = models.ForeignKey(
        PetType, related_name="breeds", on_delete=models.CASCADE
    )

    class Meta:
        verbose_name = _("Breed")
        verbose_name_plural = _("Breeds")

    def __str__(self):
        return f"{self.name})"


class Pet(
    mixins.NameDescriptionMixin,
    mixins.TimestampMixin,
    mixins.AuditMixin,
    mixins.SlugMixin,
    models.Model,
):
    STATUS_CHOICES = [
        ("Available", "Available"),
        ("Adopted", "Adopted"),
        ("Pending", "Pending"),
        ("New", "Getting Adjusted"),
    ]

    age = models.IntegerField()
    pet_type = models.ForeignKey(PetType, on_delete=models.CASCADE)
    breed = models.ForeignKey(Breed, on_delete=models.CASCADE)
    status = models.CharField(max_length=20, choices=STATUS_CHOICES)
    shelter = models.ForeignKey(Shelter, on_delete=models.CASCADE, related_name="pets")
    photos = models.ManyToManyField(Photo, blank=True)
    videos = models.ManyToManyField(Video, blank=True)

    def __str__(self):
        return f"{self.name}"


class AdoptionApplication(
    mixins.TimestampMixin,
    mixins.AuditMixin,
    mixins.SlugMixin,
    models.Model,
):
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

    def __str__(self):
        return f"{self.user.username} - {self.pet.name}"


class Review(
    mixins.NameDescriptionMixin,
    mixins.TimestampMixin,
    mixins.AuditMixin,
    mixins.SlugMixin,
    models.Model,
):
    RATING_CHOICES = [
        ("1STAR", "1 Star"),
        ("2STARS", "2 Stars"),
        ("3STARS", "3 Stars"),
        ("4STARS", "4 Stars")
    ]

    user = models.ForeignKey(User, on_delete=models.SET_NULL, null=True, blank=True)
    rating = models.CharField(max_length=30, choices=RATING_CHOICES, null=True, blank=True)
    text = models.TextField()
    shelter = models.ForeignKey(Shelter, on_delete=models.SET_NULL, null=True)

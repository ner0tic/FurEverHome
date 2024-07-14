# pet/views.py

from django.shortcuts import render, get_object_or_404, redirect
from django.contrib.auth.decorators import login_required
from rest_framework import viewsets
from django.contrib.auth.decorators import permission_required

from .models import Pet, Breed, PetType, Photo, Video, AdoptionApplication, Review
from .serializers import (
    PetSerializer,
    PhotoSerializer,
    VideoSerializer,
    AdoptionApplicationSerializer,
    ReviewSerializer,
)
from .forms import PetForm, AdoptionApplicationForm


@login_required
def create_pet(request):
    if request.method == "POST":
        form = PetForm(request.POST, request.FILES)
        if form.is_valid():
            form.save()
            return redirect("pet_list")
    else:
        form = PetForm()
    return render(request, "pet/create.html", {"form": form})


@login_required
def update_pet(request, id):
    pet = get_object_or_404(Pet, id=id)
    if request.method == "POST":
        form = PetForm(request.POST, request.FILES, instance=pet)
        if form.is_valid():
            form.save()
            return redirect("pet_detail", id=pet.id)
    else:
        form = PetForm(instance=pet)
    return render(request, "pets/update_pet.html", {"form": form})


@login_required
def adoption_application(request, pet_id):
    pet = get_object_or_404(Pet, id=pet_id)
    if request.method == "POST":
        form = AdoptionApplicationForm(request.POST)
        if form.is_valid():
            application = form.save(commit=False)
            application.user = request.user
            application.pet = pet
            application.save()
            return redirect("profile")
    else:
        form = AdoptionApplicationForm()
    return render(
        request, "adoptions/adoption_application.html", {"form": form, "pet": pet}
    )


class PetViewSet(viewsets.ModelViewSet):
    queryset = Pet.objects.all()
    serializer_class = PetSerializer


class PhotoViewSet(viewsets.ModelViewSet):
    queryset = Photo.objects.all()
    serializer_class = PhotoSerializer


class VideoViewSet(viewsets.ModelViewSet):
    queryset = Video.objects.all()
    serializer_class = VideoSerializer


class AdoptionApplicationViewSet(viewsets.ModelViewSet):
    queryset = AdoptionApplication.objects.all()
    serializer_class = AdoptionApplicationSerializer


class ReviewViewSet(viewsets.ModelViewSet):
    queryset = Review.objects.all()
    serializer_class = ReviewSerializer


def landing(request):
    pet_types = PetType.objects.all()
    breeds = Breed.objects.all()
    return render(
        request, "landing/index.html", {"pet_types": pet_types, "breeds": breeds}
    )


def pet_index(request):
    pets = Pet.objects.all()
    return render(request, "pet/index.html", {"pets": pets})


def pet_show(request, pid):
    pet = get_object_or_404(Pet, pk=pid)
    return render(request, "pet/show.html", {"pet": pet})


def pet_search(request):
    location = request.GET.get("location")
    pet_type_id = request.GET.get("pet_type")
    breed_id = request.GET.get("breed")
    age = request.GET.get("age")

    pets = Pet.objects.all()

    if location:
        pets = pets.filter(shelter__location__icontains=location)
    if pet_type_id:
        pets = pets.filter(pet_type_id=pet_type_id)
    if breed_id:
        pets = pets.filter(breed_id=breed_id)
    if age:
        if age == "puppy / kitten":
            pets = pets.filter(age__lte=1)
        elif age == "adult":
            pets = pets.filter(age__gt=1, age__lte=7)
        elif age == "senior":
            pets = pets.filter(age__gt=7)

    pet_types = PetType.objects.all()
    breeds = Breed.objects.all()
    return render(
        request,
        "pet/search.html",
        {"pets": pets, "pet_types": pet_types, "breeds": breeds},
    )

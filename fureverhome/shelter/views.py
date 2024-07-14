# shelter/views.py

from django.shortcuts import render, get_object_or_404, redirect
from django.contrib.auth.decorators import login_required
from django.contrib.auth.decorators import permission_required
from rest_framework import viewsets

from .models import Shelter
from .serializers import ShelterSerializer

def shelter_index(request):
    shelters = Shelter.objects.all()
    return render(request, 'shelter/index.html', {'shelters': shelters})

def shelter_show(request, sid):
    shelter = get_object_or_404(Shelter, pk=sid)
    return render(request, 'shelter/show.html', {'shelter': shelter})


class ShelterViewSet(viewsets.ModelViewSet):
    queryset = Shelter.objects.all()
    serializer_class = ShelterSerializer

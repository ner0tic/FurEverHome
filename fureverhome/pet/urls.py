# pet/urls.py

from django.urls import path, include
from rest_framework.routers import DefaultRouter
from .views import (
    PetViewSet, pet_index, pet_show, pet_search
)

router = DefaultRouter()
router.register(r'pets', PetViewSet)

urlpatterns = [
    path("", pet_index, name="pet_index"),
    path("<int:pid>/", pet_show, name="pet_show"),
    path('search/', pet_search, name='pet_search'),
    path(r'', include(router.urls)),
]

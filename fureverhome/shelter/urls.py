# shelter/urls.py

from django.urls import path, include
# shelter/urls.py

from rest_framework.routers import DefaultRouter

from .views import (
    ShelterViewSet, shelter_index, shelter_show
)

router = DefaultRouter()
router.register(r'shelters', ShelterViewSet)

urlpatterns = [
    path("", shelter_index, name="shelter_index"),
    path("<int:sid>/", shelter_show, name="shelter_show"),
    path(r'', include(router.urls)),
]

from django.contrib import admin

from .models import Pet, PetType, Breed, AdoptionApplication, Review


@admin.register(Pet)
class PetAdmin(admin.ModelAdmin):
    list_display = ("name", "age", "breed", "pet_type", "shelter", "status")
    search_fields = ("name", "breed")
    list_filter = ("shelter", "status")
    ordering = ("name",)


@admin.register(PetType)
class PetTypeAdmin(admin.ModelAdmin):
    list_display = ("name",)
    search_fields = ("name",)
    ordering = ("name",)


@admin.register(Breed)
class BreedAdmin(admin.ModelAdmin):
    list_display = ("name",)
    search_fields = ("name",)
    ordering = ("name",)


@admin.register(AdoptionApplication)
class AdoptionApplicationAdmin(admin.ModelAdmin):
    pass


@admin.register(Review)
class ReviewAdmin(admin.ModelAdmin):
    pass

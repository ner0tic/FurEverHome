# pet/serializers.py

from rest_framework import serializers

from .models import Pet, Photo, Video, AdoptionApplication, Review


class PhotoSerializer(serializers.ModelSerializer):
    class Meta:
        model = Photo
        fields = "__all__"


class VideoSerializer(serializers.ModelSerializer):
    class Meta:
        model = Video
        fields = "__all__"


class PetSerializer(serializers.ModelSerializer):
    photos = PhotoSerializer(many=True, read_only=True)
    videos = VideoSerializer(many=True, read_only=True)

    class Meta:
        model = Pet
        fields = "__all__"


class AdoptionApplicationSerializer(serializers.ModelSerializer):
    class Meta:
        model = AdoptionApplication
        fields = "__all__"


class ReviewSerializer(serializers.ModelSerializer):
    class Meta:
        model = Review
        fields = "__all__"

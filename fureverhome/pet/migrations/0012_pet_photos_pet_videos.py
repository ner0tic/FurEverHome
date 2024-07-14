# Generated by Django 5.0.6 on 2024-07-03 19:05

from django.db import migrations, models


class Migration(migrations.Migration):
    dependencies = [
        ("media", "0001_initial"),
        ("pet", "0011_delete_photo_delete_video"),
    ]

    operations = [
        migrations.AddField(
            model_name="pet",
            name="photos",
            field=models.ManyToManyField(blank=True, to="media.photo"),
        ),
        migrations.AddField(
            model_name="pet",
            name="videos",
            field=models.ManyToManyField(blank=True, to="media.video"),
        ),
    ]

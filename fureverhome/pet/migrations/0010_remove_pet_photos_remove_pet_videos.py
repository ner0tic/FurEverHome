# Generated by Django 5.0.6 on 2024-07-03 18:17

from django.db import migrations


class Migration(migrations.Migration):
    dependencies = [
        ("pet", "0009_alter_pet_photos_alter_pet_videos"),
    ]

    operations = [
        migrations.RemoveField(
            model_name="pet",
            name="photos",
        ),
        migrations.RemoveField(
            model_name="pet",
            name="videos",
        ),
    ]
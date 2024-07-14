# Generated by Django 5.0.6 on 2024-07-02 12:49

from django.db import migrations, models


class Migration(migrations.Migration):
    dependencies = [
        ("pet", "0005_alter_pet_photos_alter_pet_videos"),
    ]

    operations = [
        migrations.AddField(
            model_name="pet",
            name="pet_type",
            field=models.CharField(
                choices=[("dog", "Dog"), ("cat", "Cat")], default="dog", max_length=10
            ),
            preserve_default=False,
        ),
    ]
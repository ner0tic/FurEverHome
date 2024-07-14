# Generated by Django 5.0.6 on 2024-06-30 20:56

import django.db.models.deletion
from django.db import migrations, models


class Migration(migrations.Migration):
    dependencies = [
        ("pet", "0003_adoptionapplication_home_environment_and_more"),
        ("shelter", "0001_initial"),
    ]

    operations = [
        migrations.AlterField(
            model_name="review",
            name="shelter",
            field=models.ForeignKey(
                on_delete=django.db.models.deletion.CASCADE,
                related_name="reviews",
                to="shelter.shelter",
            ),
        ),
        migrations.AlterField(
            model_name="pet",
            name="shelter",
            field=models.ForeignKey(
                on_delete=django.db.models.deletion.CASCADE,
                related_name="pets",
                to="shelter.shelter",
            ),
        ),
        migrations.DeleteModel(
            name="Shelter",
        ),
    ]

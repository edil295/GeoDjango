from django.contrib import admin
from .models import Location
from django.contrib.gis.admin import GISModelAdmin


@admin.register(Location)
class LocationAdmin(GISModelAdmin):
    list_display = ("name", "point")

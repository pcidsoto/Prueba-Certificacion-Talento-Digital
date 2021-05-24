from django.contrib import admin
from .models import Hoteles, Comentarios, AtributosHotel, Atributos
# Register your models here.

class HotelesAdmin(admin.ModelAdmin):
    list_display= ['nombre','descripcion','calificacion','cant_votos']

class ComentariosAdmin(admin.ModelAdmin):
    list_display=[field.name for field in Comentarios._meta.get_fields()]

class AtributosAdmin(admin.ModelAdmin):
    list_display=['nombre']

class AtributosHotelAdmin(admin.ModelAdmin):
    list_display = [field.name for field in AtributosHotel._meta.get_fields()]


admin.site.register(Hoteles, HotelesAdmin)
admin.site.register(Comentarios, ComentariosAdmin)
admin.site.register(Atributos, AtributosAdmin)
admin.site.register(AtributosHotel, AtributosHotelAdmin)
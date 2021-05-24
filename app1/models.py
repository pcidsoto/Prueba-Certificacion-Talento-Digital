from django.db import models
from django.contrib.auth.models import User

# Create your models here.
class Hoteles(models.Model):
    nombre = models.CharField(max_length=50)
    descripcion = models.CharField(max_length=500, blank=True, null=True)
    calificacion = models.DecimalField(
        max_digits=11,
        decimal_places=2,
        null=True)
    cant_votos = models.IntegerField(blank=True, null=True)

    def __str__(self):
        return self.nombre


class Comentarios(models.Model):
    hotel = models.ForeignKey(Hoteles, on_delete=models.CASCADE)
    nombre_usuario = models.CharField(max_length=50)
    comentario = models.CharField(max_length=500)
    fecha = models.DateField(blank=True, null=True)
    puntuacion = models.IntegerField(blank=True, null=True)


class Atributos(models.Model):
    nombre = models.CharField(max_length=50)

    def __str__(self):
        return self.nombre


class AtributosHotel(models.Model):
    hotel = models.ForeignKey(Hoteles, on_delete=models.CASCADE)
    atributo = models.ForeignKey(Atributos, on_delete=models.CASCADE)
    valor_atributo = models.CharField(max_length=500)
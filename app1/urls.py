from django.urls import path
from .views import *

app_name = "app1"

urlpatterns = [
    path('', IndexView.as_view(), name='index'),
    path('registrar/', RegistroUsuario.as_view(), name='registro'),
    path('reviews/<int:id>', ComentarioView.as_view(), name='comentar'),
    path('hotel/<int:pk>', DetalleHotel.as_view(), name='detalle_hotel'),
]
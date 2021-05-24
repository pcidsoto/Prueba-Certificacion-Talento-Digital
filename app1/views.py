from django.shortcuts import render, redirect
from django.urls import reverse_lazy, reverse
from django.views.generic import View
from django.views.generic.edit import UpdateView, CreateView
from django.views.generic import DetailView
from django.contrib.auth.mixins import LoginRequiredMixin
from django.contrib.auth.models import User
from django.db.models import Sum
from .models import Comentarios, Hoteles, AtributosHotel
from .forms import FormularioRegistro, ComentarioForm

import datetime


# Create your views here.
class IndexView(View):
    template_name = 'app1/index.html'

    def get(self, request):
        context = {}

        context['hoteles'] = Hoteles.objects.all().order_by('-cant_votos')
        context['comentarios'] = Comentarios.objects\
                                    .all().order_by('-fecha')[:5]

        return render(request, self.template_name, context)
    
    def post(self, request):
        estrellas = self.request.POST.get('estrellas')
        buscar = self.request.POST.get('search')
        cant_votos= self.request.POST.get('cant_votos')
        calificacion = self.request.POST.get('calificacion')
        nombre = self.request.POST.get('nombre')

        context = {}
        if estrellas is not None:
            print(estrellas)
            context['hoteles'] = Hoteles.objects.filter(calificacion__lte=int(estrellas)+0.999, calificacion__gte=estrellas)
        

        if buscar is not None:
            context['hoteles'] = Hoteles.objects.filter(nombre__icontains=buscar)
        

        if cant_votos is not None:
            context['hoteles'] = Hoteles.objects.all().order_by('-cant_votos')
        
        
        if nombre is not None:
            print("Sucediendo")
            context['hoteles'] = Hoteles.objects.all().order_by('nombre')
        
        
        if calificacion is not None:
            context['hoteles'] = Hoteles.objects.all().order_by('-calificacion')
        


        
        context['comentarios'] = Comentarios.objects\
                                   .all().order_by('-fecha')[:5]

        return render(request, self.template_name, context)


class RegistroUsuario(CreateView):
    model = User
    template_name = 'app1/registro.html'
    form_class = FormularioRegistro
    success_url = reverse_lazy('app1:index')


class DetalleHotel(DetailView):
    model = Hoteles
    context_object_name = 'detalle_hotel'
    template_name = 'app1/detalle_hotel.html'

    def get_context_data(self, **kwargs):
        context = super(DetalleHotel, self).get_context_data(**kwargs)
        hotel = self.get_object()
        context['atributos_hotel'] = AtributosHotel.objects.filter(hotel=hotel)
        comentarios = Comentarios.objects.filter(hotel=hotel)
        context['comentarios'] = comentarios
        return context 


class ComentarioView(LoginRequiredMixin, CreateView):
    model = Comentarios
    template_name = 'app1/comentar.html'
    form_class = ComentarioForm

    def get_context_data(self, **kwargs):
        context = super(ComentarioView, self).get_context_data(**kwargs)
        context['hotel'] = Hoteles.objects.get(id=self.kwargs['id'])
        print(context['hotel'])
        return context 
    
    def form_valid(self, form):
        data_input = form.cleaned_data
        print(data_input['calificacion'])
        user = self.request.user
        hotel = Hoteles.objects.get(id=self.kwargs['id'])
        form.instance.hotel = hotel
        form.instance.puntuacion = int(data_input['calificacion'])
        form.instance.nombre_usuario = user.username
        form.instance.fecha = datetime.datetime.now()
        return super().form_valid(form)

    def get_success_url(self):
        hotel = Hoteles.objects.get(id=self.kwargs['id'])
        comentarios = Comentarios.objects.filter(hotel=hotel)
        suma = comentarios.aggregate(Sum('puntuacion'))
        if comentarios.count() == 0:
            total_comentario = 1
        else:
            total_comentario = comentarios.count()
            
        if suma['puntuacion__sum'] is None:
            suma_puntuacion = 0
        else:
            suma_puntuacion = suma['puntuacion__sum']
        
        Hoteles.objects.filter(id=self.kwargs['id']).update(
            cant_votos=hotel.cant_votos+1,
            calificacion= suma_puntuacion / total_comentario
        )
        return reverse('app1:detalle_hotel', kwargs={"pk": self.kwargs['id']})
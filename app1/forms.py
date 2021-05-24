from django import forms
from django.contrib.auth.models import User
from django.contrib.auth.forms import UserCreationForm
from .models import Comentarios


class FormularioRegistro(UserCreationForm):
    class Meta:
        model = User
        fields = ('username', 'email','password1','password2')

    def __init__(self, *args, **kwargs):
        super(FormularioRegistro, self).__init__(*args, **kwargs)
        self.fields['username'].widget.attrs['class'] = 'form-control'
        self.fields['email'].widget.attrs['class'] = 'form-control'
        self.fields['password1'].widget.attrs['class'] = 'form-control'
        self.fields['password2'].widget.attrs['class'] = 'form-control'

class ComentarioForm(forms.ModelForm):
    CHOICES = ((1, 1),(2, 2),(3, 3),(4, 4),(5, 5))
    calificacion = forms.ChoiceField(choices=CHOICES)

    class Meta:
        model = Comentarios
        widgets = {
            'comentario': forms.Textarea(attrs={'class': 'form-control'}),
            'calificacion': forms.Select(attrs={'class': 'form-control'}),
        }
        fields = ['calificacion','comentario']


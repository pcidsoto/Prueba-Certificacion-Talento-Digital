# Generated by Django 3.2.2 on 2021-05-08 14:30

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Atributos',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombre', models.CharField(max_length=50)),
            ],
        ),
        migrations.CreateModel(
            name='Hoteles',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombre', models.CharField(max_length=50)),
                ('descripcion', models.CharField(blank=True, max_length=500, null=True)),
                ('calificacion', models.DecimalField(decimal_places=2, max_digits=11, null=True)),
                ('cant_votos', models.IntegerField(blank=True, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='Comentarios',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombre_usuario', models.CharField(max_length=50)),
                ('comentario', models.CharField(max_length=500)),
                ('fecha', models.CharField(blank=True, max_length=50, null=True)),
                ('hotel', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='app1.hoteles')),
            ],
        ),
        migrations.CreateModel(
            name='AtributosHotel',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('valor_atributo', models.CharField(max_length=500)),
                ('atributo', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='app1.atributos')),
                ('hotel', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='app1.hoteles')),
            ],
        ),
    ]

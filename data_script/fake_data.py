from app1.models import Hoteles, Comentarios, Atributos, AtributosHotel


def crear():

    if len(Atributos.objects.all())<1:
        estacionamiento = Atributos.objects.create(nombre='Estacionamiento')
        wi_fi = Atributos.objects.create(nombre='Wi-Fi')
        mucama = Atributos.objects.create(nombre='Mucama')
        tarjeta = Atributos.objects.create(nombre='Acepta tarjeta de crédito')
        reservas = Atributos.objects.create(nombre='Acepta reservas')
        habitaciones = Atributos.objects.create(nombre='Habitaciones para')
        a_acondicionado = Atributos.objects.create(nombre='Aire Acondicionado')
        traslado = Atributos.objects.create(nombre='Traslado areopuesto')
    
    if len(Hoteles.objects.all())<1:
        hotel_1 = Hoteles.objects.create(
            nombre="Ibis Santiago Estación Central.", 
            descripcion="""El Ibis Santiago Estación Central, 
            situado en Santiago, justo al lado de la estación de autobuses 
            principal de la ciudad.""",
        )
        hotel_2 = Hoteles.objects.create(
            nombre="Hotel Diego de Almagro Aeropuerto", 
            descripcion="""El Hotel Diego de Almagro Aeropuerto ofrece 
            habitaciones amplias y tiene una ubicación práctica, 
            junto al aeropuerto internacional y a 7 minutos en 
            coche del centro de Santiago.""",
        )
        hotel_3 = Hoteles.objects.create(
            nombre="Sheraton Santiago Hotel & Convention Center", 
            descripcion="""El Sheraton Santiago Hotel & Convention Center 
            ofrece piscina fantástica al aire libre y centro de fitness 
            completo. Este alojamiento de lujo y de 5 estrellas se encuentra 
            en el barrio de Providencia, en Santiago. Hay conexión WiFi 
            gratuita en las zonas comunes."""
        )
        #Atributos Hotel 1
        AtributosHotel.objects.create(
            hotel=hotel_1,
            atributo=estacionamiento,
            valor_atributo='Sí'
        )
        AtributosHotel.objects.create(
            hotel=hotel_1,
            atributo=wi_fi,
            valor_atributo='Sí'
        )
        AtributosHotel.objects.create(
            hotel=hotel_1,
            atributo=mucama,
            valor_atributo='Sí'
        )
        AtributosHotel.objects.create(
            hotel=hotel_1,
            atributo=tarjeta,
            valor_atributo='Sí'
        )
        AtributosHotel.objects.create(
            hotel=hotel_1,
            atributo=reservas,
            valor_atributo='Con 24 horas de anticipación.'
        )
        AtributosHotel.objects.create(
            hotel=hotel_1,
            atributo=habitaciones,
            valor_atributo='2, 4, 6 y 8 personas.'
        )
        AtributosHotel.objects.create(
            hotel=hotel_1,
            atributo=a_acondicionado,
            valor_atributo='Sí.'
        )
        AtributosHotel.objects.create(
            hotel=hotel_1,
            atributo=traslado,
            valor_atributo='Sí.'
        )

        #Atributos Hotel 2
        
        AtributosHotel.objects.create(
            hotel=hotel_2,
            atributo=estacionamiento,
            valor_atributo='Sí'
        )
        AtributosHotel.objects.create(
            hotel=hotel_2,
            atributo=wi_fi,
            valor_atributo='Sí.'
        )
        AtributosHotel.objects.create(
            hotel=hotel_2,
            atributo=mucama,
            valor_atributo='Sí.'
        )
        AtributosHotel.objects.create(
            hotel=hotel_2,
            atributo=tarjeta,
            valor_atributo='Sí. '
        )
        AtributosHotel.objects.create(
            hotel=hotel_2,
            atributo=reservas,
            valor_atributo='Con 24 horas de anticipación.'
        )
        AtributosHotel.objects.create(
            hotel=hotel_2,
            atributo=habitaciones,
            valor_atributo='2, 4, 6 y 8 personas.'
        )
        AtributosHotel.objects.create(
            hotel=hotel_2,
            atributo=a_acondicionado,
            valor_atributo='Sí.'
        )
        
        #Atributos Hotel 2
        AtributosHotel.objects.create(
            hotel=hotel_3,
            atributo=wi_fi,
            valor_atributo='Sí.'
        )
        AtributosHotel.objects.create(
            hotel=hotel_3,
            atributo=mucama,
            valor_atributo='Sí.'
        )
        AtributosHotel.objects.create(
            hotel=hotel_3,
            atributo=tarjeta,
            valor_atributo='Sí. '
        )
        AtributosHotel.objects.create(
            hotel=hotel_3,
            atributo=reservas,
            valor_atributo='Con 48 horas de anticipación.'
        )
        AtributosHotel.objects.create(
            hotel=hotel_3,
            atributo=habitaciones,
            valor_atributo='2 y 4 personas.'
        )
        AtributosHotel.objects.create(
            hotel=hotel_3,
            atributo=a_acondicionado,
            valor_atributo='Sí.'
        )

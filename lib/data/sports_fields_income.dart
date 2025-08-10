import 'package:reservacion_de_canchas_deportivas/models/reservacion.dart';

List<Map<String, dynamic>> sportsFieldsIncome = [
  {
    'nombre': 'Complejo deportivo Rancho Tara cancha #1',
    'tipo': 'Fútbol',
    'ubicacion':
        'Rancho Tara frente al intercambiador del norte San Pedro Sula',
    'imagenes': [
      'https://images.unsplash.com/photo-1546717003-caee5f93a9db?q=80&w=1078&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'https://images.unsplash.com/photo-1546717003-caee5f93a9db?q=80&w=1078&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'https://images.unsplash.com/photo-1546717003-caee5f93a9db?q=80&w=1078&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    ],
    'horarios': [
      'Lunes a Viernes: 8:00 AM - 10:00 PM',
      'Sábados y Domingos: 9:00 AM - 11:00 PM',
    ],
    'reservacioneshistorial': [
      Reservacion(
        usuario: "Carlos Pérez",
        fecha: DateTime(2025, 8, 4),
        horaInicio: "10:00 AM",
        horaFin: "11:30 AM",
      ),
      Reservacion(
        usuario: "Ana López",
        fecha: DateTime(2025, 8, 2),
        horaInicio: "4:00 PM",
        horaFin: "5:00 PM",
      ),
    ],
  },
  {
    'nombre': 'Cancha Fercho',
    'tipo': 'Tenis',
    'ubicacion': 'Colonia Las Palmas',
    'imagenes': [],
    'horarios': [''],
  },
  {
    'nombre': 'Cancha Suarez',
    'tipo': 'Baloncesto',
    'ubicacion': 'Colonia Las ',
  },
];

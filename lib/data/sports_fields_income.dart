import 'package:reservacion_de_canchas_deportivas/models/reservacion.dart';

List<Map<String, dynamic>> sportsFieldsIncome = [
  {
    'nombre': 'Complejo deportivo Rancho Tara cancha #1',
    'tipo': 'Fútbol',
    'ubicacion': 'Rancho Tara frente al intercambiador del norte San Pedro Sula',
    'imagenes':[
      'https://lh3.googleusercontent.com/gps-cs-s/AC9h4nqJ_99RdXvYVdgNjXUW3p3tDriG1C2Y1qMRpcsA6exrQQgsEGpeMnFfLX1h0Vy79E7rj9ouJHhuEpDt3bE2rwXmt53n6n6eUb9HuNjUt7UlqKxfvefgqVPFs85dgLJSkpxoInq_=s1360-w1360-h1020-rw',
      'https://lh3.googleusercontent.com/gps-cs-s/AC9h4nrAuq4QbiIuv8Nz1CcECA94GxYxlWTGibzeSQJsBgy73ePpP2NlCx7oUqHFJsqEHQF0Wb_TvFlOvyD4onJiviPG0LmD8_mr3J8pMx8243P_YfE9P0ug_CJFgbpHwiNpp6_LOvN13A=s1360-w1360-h1020-rw',
      'https://lh3.googleusercontent.com/gps-cs-s/AC9h4npXo3EHaosmjitNyvFr1TOU5mFlJaAIa8MdULuYXly2EPtvv607yx2ghwWGKKKHyusDDtuDHEJzgYu5ehHIgcBPQJcYnz88KADHLT4ztwnHXWR_mkXnnDc9PQEH7KZpG2jt9Hd8=s1360-w1360-h1020-rw'
    ],
    'horarios': [
      'Lunes a Viernes: 8:00 AM - 10:00 PM',
      'Sábados y Domingos: 9:00 AM - 11:00 PM'
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
    ]
  },
  {
    'nombre': 'Cancha Fercho',
    'tipo': 'Tenis',
    'ubicacion': 'Colonia Las Palmas',
    'imagenes': [],
    'horarios': ['']

  },
  {
    'nombre': 'Cancha Suarez',
    'tipo': 'Baloncesto',
    'ubicacion': 'Colonia Las ',
  },
];
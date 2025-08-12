import 'package:reservacion_de_canchas_deportivas/models/reservacion.dart';

List<Map<String, dynamic>> sportsFieldsIncome = [
  {
    'nombre': 'Complejo deportivo Rancho Tara cancha #1',
    'tipo': 'Fútbol',
    'ubicacion':
        'Rancho Tara frente al intercambiador del norte San Pedro Sula',
    'imagenes': [
      'https://lh3.googleusercontent.com/gps-cs-s/AC9h4nqJ_99RdXvYVdgNjXUW3p3tDriG1C2Y1qMRpcsA6exrQQgsEGpeMnFfLX1h0Vy79E7rj9ouJHhuEpDt3bE2rwXmt53n6n6eUb9HuNjUt7UlqKxfvefgqVPFs85dgLJSkpxoInq_=s1360-w1360-h1020-rw',
      'https://lh3.googleusercontent.com/gps-cs-s/AC9h4nrAuq4QbiIuv8Nz1CcECA94GxYxlWTGibzeSQJsBgy73ePpP2NlCx7oUqHFJsqEHQF0Wb_TvFlOvyD4onJiviPG0LmD8_mr3J8pMx8243P_YfE9P0ug_CJFgbpHwiNpp6_LOvN13A=s1360-w1360-h1020-rw',
      'https://lh3.googleusercontent.com/gps-cs-s/AC9h4npXo3EHaosmjitNyvFr1TOU5mFlJaAIa8MdULuYXly2EPtvv607yx2ghwWGKKKHyusDDtuDHEJzgYu5ehHIgcBPQJcYnz88KADHLT4ztwnHXWR_mkXnnDc9PQEH7KZpG2jt9Hd8=s1360-w1360-h1020-rw',
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
    'nombre': 'Planeta futbol',
    'tipo': 'Fútbol',
    'ubicacion':
        'Colonia El Playon, 504, 00504 San Pedro Sula, Cortés',
    'imagenes': [
      'https://lh3.googleusercontent.com/p/AF1QipNhRwC3fjAL0LazFa5zNZ2LB1hU6RBR1iReOeaa=s1360-w1360-h1020-rw',
      'https://lh3.googleusercontent.com/p/AF1QipPcmI6B1rnCaGaPlc0DWsURGtar_WtxM1Afm1ZI=s1360-w1360-h1020-rw',
      'https://lh3.googleusercontent.com/gps-cs-s/AC9h4np9oyIX5BjyeCu1TSsDpOg86QFxAP0iZaBjOrkKrdr8tGv0GQdgiVOM3iQSswri1KpI98tx2oJKhy-fGUg9zq--l0NNziTdAfZ_zJzTYS1HZHyjynWYGQpqbd4wvZUBC-WX9OU=s1360-w1360-h1020-rw',
    ],
    'horarios': [
      'Lunes a Domingo: abierto las 24 horas',

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
    'nombre': 'Canchas Maracana Palenque',
    'tipo': 'Fútbol',
    'ubicacion':
        'Sector Palenque, calle principal 500mts Oeste gasolinera Texaco Palenque Contiguo a Escuela Little Feet, 21102 San Pedro Sula',
    'imagenes': [
      'https://lh3.googleusercontent.com/p/AF1QipMuTijoOLZAU5kPr-xWjAZbdl4egA-s8h0_ka84=s1360-w1360-h1020-rw',
      'https://lh3.googleusercontent.com/p/AF1QipOaNfh1XlkiftKpz8ekpn5NxlO8w4Dv8FCpIKJ-=s1360-w1360-h1020-rw',
      'https://lh3.googleusercontent.com/gps-cs-s/AC9h4noxfKH3lUjJu7GKwSXGCE2SGqWMCVOHkJsVrt3pHGE6b4_QvT1fzLxXLKB00A3MwnQZEvZU5hS8L-g_EVFcKHKTaPCybZYbypNy3arKRXZ3kOEGAF7AcvylK2ApJaoH9_zwyh38Eg=s1360-w1360-h1020-rw',
    ],
    'horarios': [
      'Lunes a Viernes: 01:00 PM - 11:00 PM',
      'Sábados y Domingos: 08:00 AM - 11:00 PM',

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
    'nombre': 'Canchas La Fuente',
    'tipo': 'Fútbol',
    'ubicacion':
        'Calle hacia a aldea El Carmen, San Pedro Sula, Cortés',
    'imagenes': [
      'https://lh3.googleusercontent.com/gps-cs-s/AC9h4nqy1ckKS84eJ3xEJ7YoG6GswE_K6OXujIerlbbMYZYEiFUvEYq7escOg4jljBRpE4htKT15NpW7gfMBYdOwmjhNW8gSHni3c2JfhHZ78GS0N1nyz-Q0UcRPePQkSI5HZzrburNU=s1360-w1360-h1020-rw',
      'https://lh3.googleusercontent.com/gps-cs-s/AC9h4nqgP1e95rvjPn9PkS7Kpd1m7gr7H78jAY2BcwS0pkOk0o0fWhMWxxL6lNc3IkvEr9_ibtIHh9GBNBEUtyClErZ5IzaTogCM37Ss0sCDrjRH7II4OoUFr7oZJkgMvK2VeN6j-w8a=s1360-w1360-h1020-rw',
      'https://lh3.googleusercontent.com/gps-cs-s/AC9h4noYao237M_3fsew0nEUkF_SKIP1TsLqwV06QgzwyXNPPb-uMN1i1PLrzDVbgjafgm6pywiMqjNuxlpO4noofiFtWrBJ5IDchct6YKZeWOuTdda1ZNf1d3B32JWHFeUXNFZoR39S=s1360-w1360-h1020-rw',
    ],
    'horarios': [
      'Lunes a Domindo: 09:00 AM - 10:00 PM',

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
    'tipo': 'Baloncesto',
    'ubicacion': 'Colonia las palmas',
    'imagenes': '',
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
    'nombre': 'Campo Ixel Pineda',
    'tipo': 'Beisbol',
    'ubicacion': 'Colonia las Brisas',
    'imagenes': [ ],
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
    'nombre': 'Campo de Baseball Rangers',
    'tipo': 'Beisbol',
    'ubicacion': 'Blvr. Las Torres, 21102 San Pedro Sula',
    'imagenes': [ 
      'https://lh3.googleusercontent.com/gps-cs-s/AC9h4npl7hyodUd8pDD-tmNixfn5zrhAzUOeB_mDWr0X4OXGBBsK15-vcCzXwg0yo6L8p58FUzjpuf2shRYfG2V1BLdSw-5hG1zyvTTzf1jeUWEHl_NVj2nq2cul8NuJyII43aTkG5FGtA=s1360-w1360-h1020-rw',
      'https://lh3.googleusercontent.com/gps-cs-s/AC9h4noHys2CxBVaMGTTSPqEqE45lILor-f_4w-6Gzoned9pYoySKov4jvIQvlYIobjuPELsPHsuAiGTKZ38cw1guxPa1EQLBoiJGv_T5LYyATUg4bEjL3EmnG-jYkTPeNJ-doCHt5s=s1360-w1360-h1020-rw',
      'https://lh3.googleusercontent.com/gps-cs-s/AC9h4nrfCNs_vGT3OIRFQ1AFfCQl75ughA6vviBPSSvH_XPxp4bZdPeK3rR3J5uhSuJLpMICmw0L77qmOhelTp_o3AXe0nf0meF2qFiRkh6zZ9AgyRFFgT4tV3R8IG6DoTStAnDNoEiSWA=s1360-w1360-h1020-rw'
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
    'nombre': 'Campo de SoftBall Jose Enrique Bonilla',
    'tipo': 'Beisbol',
    'ubicacion': 'Colonia Jardines del valle San Pedro Sula',
    'imagenes': [ 
      'https://lh3.googleusercontent.com/gps-cs-s/AC9h4npl7hyodUd8pDD-tmNixfn5zrhAzUOeB_mDWr0X4OXGBBsK15-vcCzXwg0yo6L8p58FUzjpuf2shRYfG2V1BLdSw-5hG1zyvTTzf1jeUWEHl_NVj2nq2cul8NuJyII43aTkG5FGtA=s1360-w1360-h1020-rw',
      'https://lh3.googleusercontent.com/gps-cs-s/AC9h4noHys2CxBVaMGTTSPqEqE45lILor-f_4w-6Gzoned9pYoySKov4jvIQvlYIobjuPELsPHsuAiGTKZ38cw1guxPa1EQLBoiJGv_T5LYyATUg4bEjL3EmnG-jYkTPeNJ-doCHt5s=s1360-w1360-h1020-rw',
      'https://lh3.googleusercontent.com/gps-cs-s/AC9h4nrfCNs_vGT3OIRFQ1AFfCQl75ughA6vviBPSSvH_XPxp4bZdPeK3rR3J5uhSuJLpMICmw0L77qmOhelTp_o3AXe0nf0meF2qFiRkh6zZ9AgyRFFgT4tV3R8IG6DoTStAnDNoEiSWA=s1360-w1360-h1020-rw'
    ],
    'horarios': [
      'Viernes y Sabados: 7:00 AM - 12:00 PM',
    ],
    'reservacioneshistorial': ''
  },
  {
    'nombre': 'Club Hondureño Arabe',
    'tipo': 'Tenis',
    'ubicacion': 'Cortes, 25 y 26 Avenida 1 y HN 21104, 4 Calle SO, 21104 San Pedro Sula',
    'imagenes': [
      'https://lh3.googleusercontent.com/gps-cs-s/AC9h4npYDcB2inLFfQwJdyEEf_JpUy4hW3rP57IZf-wT7vndcoUUavmN3DiCnBjYTrb2WF_7LBXFijGL5qFWh_NdyVO75i5nEnwaQ9LjiPm8z6pBjjUtBwwI2oV1X7r8gUu7jvXqf5bm=w408-h306-k-no',
    ],
    'horarios': [
      'Lunes a Domingos: 5:00 AM - 10:00 PM',
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
    'nombre': 'Bounce',
    'tipo': 'Tenis',
    'ubicacion': '23 Avenida NO, 7 Calle, 21102 San Pedro Sula, Cortés',
    'imagenes': [
      'https://lh3.googleusercontent.com/p/AF1QipNgFtYb-1Qb9v9a0TgfF9wOJLS1YISwYzupTzXN=s1360-w1360-h1020-rw',
      'https://lh3.googleusercontent.com/gps-cs-s/AC9h4nrHtH_YWSIcRsSlBhma04uz63dHAyxMk7ciI1k9hSYlLtwowNGFEV1oOfLaadLQvPIwMHqtoOHnI2OmkCQ68krDHkam3WWH_SW8mKGptC4ezWObTjjjNfGnJyZHLxMa2rG1JPK-=s1360-w1360-h1020-rw'
    ],
    'horarios': [
      'Lunes a Domingos: 5:00 AM - 10:00 PM',
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
    'nombre': 'Cancha la Red',
    'tipo': 'Voleibol',
    'ubicacion': 'Colonia las Brisas',
    'imagenes': [
      'https://lh3.googleusercontent.com/gps-cs-s/AC9h4nqJ_99RdXvYVdgNjXUW3p3tDriG1C2Y1qMRpcsA6exrQQgsEGpeMnFfLX1h0Vy79E7rj9ouJHhuEpDt3bE2rwXmt53n6n6eUb9HuNjUt7UlqKxfvefgqVPFs85dgLJSkpxoInq_=s1360-w1360-h1020-rw',
      'https://lh3.googleusercontent.com/gps-cs-s/AC9h4nrAuq4QbiIuv8Nz1CcECA94GxYxlWTGibzeSQJsBgy73ePpP2NlCx7oUqHFJsqEHQF0Wb_TvFlOvyD4onJiviPG0LmD8_mr3J8pMx8243P_YfE9P0ug_CJFgbpHwiNpp6_LOvN13A=s1360-w1360-h1020-rw',
      'https://lh3.googleusercontent.com/gps-cs-s/AC9h4npXo3EHaosmjitNyvFr1TOU5mFlJaAIa8MdULuYXly2EPtvv607yx2ghwWGKKKHyusDDtuDHEJzgYu5ehHIgcBPQJcYnz88KADHLT4ztwnHXWR_mkXnnDc9PQEH7KZpG2jt9Hd8=s1360-w1360-h1020-rw',
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
];

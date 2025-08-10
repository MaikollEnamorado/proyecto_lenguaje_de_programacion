class PreguntaRespuesta {
  final String pregunta;
  final String respuesta;

  PreguntaRespuesta({required this.pregunta, required this.respuesta});
}

final List<PreguntaRespuesta> listaPreguntasRespuestas = [
  PreguntaRespuesta(
    pregunta: '¿Cómo puedo reservar una cancha?',
    respuesta:
        'Selecciona la cancha, la fecha y la hora, y confirma la reserva en la aplicación.',
  ),
  PreguntaRespuesta(
    pregunta: '¿Puedo cancelar una reserva?',
    respuesta:
        'Sí, puedes cancelar hasta 24 horas antes desde la sección "Mis reservas".',
  ),
  PreguntaRespuesta(
    pregunta: '¿Qué pasa si llego tarde a mi reserva?',
    respuesta: 'Puedes perder tu turno si llegas más de 15 minutos tarde.',
  ),
  PreguntaRespuesta(
    pregunta: '¿Cómo sé si mi reserva fue confirmada?',
    respuesta:
        'Recibirás una notificación en la aplicación y un correo electrónico.',
  ),
  PreguntaRespuesta(
    pregunta: '¿Puedo reservar canchas para un grupo grande?',
    respuesta:
        'Sí, revisa las especificaciones de la cancha antes de reservar.',
  ),
];

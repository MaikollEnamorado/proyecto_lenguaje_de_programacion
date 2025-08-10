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
        'Sí, puedes cancelar hasta 24 horas antes marcando al numero de telefoo 97130847".',
  ),
  PreguntaRespuesta(
    pregunta: '¿Qué pasa si llego tarde a mi reserva?',
    respuesta: 'Puedes perder tu turno si llegas más de 15 minutos tarde.',
  ),
  PreguntaRespuesta(
    pregunta: '¿Me repondran el tiempo si se llega tarde?',
    respuesta:
        'No, el tiempo de la reserva no se repondrá si llegas tarde, ya que la cancha puede ser reservada por otro usuario.',
  ),
  PreguntaRespuesta(
    pregunta: '¿Puedo reservar canchas para un grupo grande?',
    respuesta:
        'Sí, revisa las especificaciones de la cancha antes de reservar.',
  ),
];

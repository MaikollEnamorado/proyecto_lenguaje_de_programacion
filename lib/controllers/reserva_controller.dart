import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Reserva {
  final String usuario;
  final DateTime fecha;
  final TimeOfDay hora;
  final Duration duracion;

  Reserva({
    required this.usuario,
    required this.fecha,
    required this.hora,
    required this.duracion,
  });
}

class ReservaController extends GetxController {
  var reservas = <Reserva>[].obs;

  
  final TimeOfDay horarioInicioPermitido = TimeOfDay(hour: 8, minute: 0);
  final TimeOfDay horarioFinPermitido = TimeOfDay(hour: 22, minute: 0);


  bool hayConflicto(Reserva nuevaReserva) {
    return reservas.any((reservaExistente) {
    
      if (reservaExistente.usuario == nuevaReserva.usuario) return false;
      if (reservaExistente.fecha != nuevaReserva.fecha) return false;
      final inicioExistente = DateTime(
        reservaExistente.fecha.year,
        reservaExistente.fecha.month,
        reservaExistente.fecha.day,
        reservaExistente.hora.hour,
        reservaExistente.hora.minute,
      );
      final finExistente = inicioExistente.add(reservaExistente.duracion);

      final inicioNueva = DateTime(
        nuevaReserva.fecha.year,
        nuevaReserva.fecha.month,
        nuevaReserva.fecha.day,
        nuevaReserva.hora.hour,
        nuevaReserva.hora.minute,
      );
      final finNueva = inicioNueva.add(nuevaReserva.duracion);

      
      return inicioNueva.isBefore(finExistente) &&
          finNueva.isAfter(inicioExistente);
    });
  }

  bool estaDentroDeHorarioPermitido(Reserva reserva) {
    final inicio = reserva.hora;
    final fin = TimeOfDay(
      hour: (inicio.hour + reserva.duracion.inHours) % 24,
      minute: inicio.minute,
    );

    bool inicioValido =
        (inicio.hour > horarioInicioPermitido.hour ||
            (inicio.hour == horarioInicioPermitido.hour &&
                inicio.minute >= horarioInicioPermitido.minute)) &&
        (inicio.hour < horarioFinPermitido.hour ||
            (inicio.hour == horarioFinPermitido.hour &&
                inicio.minute <= horarioFinPermitido.minute));

    bool finValido =
        (fin.hour > horarioInicioPermitido.hour ||
            (fin.hour == horarioInicioPermitido.hour &&
                fin.minute >= horarioInicioPermitido.minute)) &&
        (fin.hour <= horarioFinPermitido.hour ||
            (fin.hour == horarioFinPermitido.hour &&
                fin.minute <= horarioFinPermitido.minute));

    return inicioValido && finValido;
  }

  bool agregarReserva(Reserva reserva) {
    if (!estaDentroDeHorarioPermitido(reserva)) {
      return false;
    }
    if (hayConflicto(reserva)) {
      return false;
    }
    reservas.add(reserva);
    return true;
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Reserva {
  final DateTime fecha;
  final TimeOfDay hora;
  final Duration duracion;

  Reserva({required this.fecha, required this.hora, required this.duracion});
}

class ReservaController extends GetxController {
  var reservas = <Reserva>[].obs;
  void agregarReserva(Reserva reserva) {
    reservas.add(reserva);
  }
}

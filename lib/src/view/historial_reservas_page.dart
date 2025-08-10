import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reservacion_de_canchas_deportivas/controllers/reserva_controller.dart';

class HistorialReservasPage extends StatelessWidget {
  final ReservaController reservaController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Historial de Reservas')),
      body: Obx(() {
        if (reservaController.reservas.isEmpty) {
          return Center(child: Text('No hay reservas aún'));
        }
        return ListView.builder(
          itemCount: reservaController.reservas.length,
          itemBuilder: (context, index) {
            final reserva = reservaController.reservas[index];
            return ListTile(
              title: Text('Cancha reservada'),
              subtitle: Text(
                'Fecha: ${reserva.fecha.toLocal().toString().split(' ')[0]} \n'
                'Hora: ${reserva.hora.format(context)} \n'
                'Duración: ${reserva.duracion.inHours} hora(s)',
              ),
            );
          },
        );
      }),
    );
  }
}

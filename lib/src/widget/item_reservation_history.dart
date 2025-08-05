import 'package:flutter/material.dart';
import 'package:reservacion_de_canchas_deportivas/models/reservacion.dart';

class HistorialReservaciones extends StatelessWidget {
  final List<Reservacion> historial;

  const HistorialReservaciones({super.key, required this.historial});

  String formatearFecha(DateTime fecha) {
    return "${fecha.day.toString().padLeft(2, '0')}/"
           "${fecha.month.toString().padLeft(2, '0')}/"
           "${fecha.year}";
  }

  @override
  Widget build(BuildContext context) {
    if (historial.isEmpty) {
      return const Center(
        child: Text("No hay reservaciones registradas."),
      );
    }

    return ListView.builder(
      itemCount: historial.length,
      itemBuilder: (context, index) {
        final reserva = historial[index];

        return Card(
          elevation: 3,
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
          child: ListTile(
            leading: const Icon(Icons.person),
            title: Text(reserva.usuario),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Fecha: ${formatearFecha(reserva.fecha)}"),
                Text("Hora: ${reserva.horaInicio} - ${reserva.horaFin}"),
              ],
            ),
          ),
        );
      },
    );
  }
}

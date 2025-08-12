import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reservacion_de_canchas_deportivas/controllers/reserva_controller.dart';

class HistorialReservasPage extends StatelessWidget {
  final ReservaController reservaController =
      Get.isRegistered<ReservaController>()
      ? Get.find<ReservaController>()
      : Get.put(ReservaController());

  HistorialReservasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true, // para que el fondo cubra todo
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Historial de Reservas',
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          // Imagen de fondo
          Positioned.fill(
            child: Image.network(
              'https://plus.unsplash.com/premium_vector-1727944376147-fb018df827e6?q=80&w=735&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
              fit: BoxFit.cover,
            ),
          ),
          // Capa oscura para mejor visibilidad del texto
          Positioned.fill(
            child: Container(color: Colors.black.withOpacity(0.5)),
          ),
          // Contenido
          Obx(() {
            if (reservaController.reservas.isEmpty) {
              return const Center(
                child: Text(
                  'No hay reservas aún',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              );
            }
            return ListView.builder(
              padding: const EdgeInsets.only(
                top: kToolbarHeight + 32,
                left: 16,
                right: 16,
                bottom: 16,
              ),
              itemCount: reservaController.reservas.length,
              itemBuilder: (context, index) {
                final reserva = reservaController.reservas[index];
                return Container(
                  margin: const EdgeInsets.only(bottom: 12),
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: ListTile(
                          title: const Text('Cancha reservada'),
                          subtitle: Text(
                            'Fecha: ${reserva.fecha.toLocal().toString().split(' ')[0]}\n'
                            'Hora: ${reserva.hora.format(context)}\n'
                            'Duración: ${reserva.duracion.inHours} hora(s)',
                          ),
                        ),
                      ),
                      PopupMenuButton(
                        icon: const Icon(Icons.more_vert),
                        onSelected: (value) {
                          if (value == 'eliminar') {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: const Text("Eliminar"),
                                  content: const Text("¿Deseas eliminar esta reserva?"),
                                  actions: [
                                    TextButton(
                                      child: const Text("No"),
                                      onPressed: () {
                                        Navigator.of(context).pop(); // Cierra el diálogo
                                      },
                                    ),
                                    TextButton(
                                      child: const Text("Sí"),
                                      onPressed: () {
                                        reservaController.reservas.removeAt(index);
                                        Navigator.of(context).pop(); // Cierra el diálogo
                                      },
                                    ),
                                  ],
                                );
                              },
                            );
                          }
                        },
                        itemBuilder: (context) => [
                          const PopupMenuItem(
                            value: 'editar',
                            child: Text('Editar reserva'),
                          ),
                          const PopupMenuItem(
                            value: 'eliminar',
                            child: Text('Eliminar reserva'),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            );
          }),
        ],
      ),
    );
  }
}

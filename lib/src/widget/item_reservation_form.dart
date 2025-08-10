import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reservacion_de_canchas_deportivas/controllers/reserva_controller.dart';

class ReservationForm extends StatefulWidget {
  const ReservationForm({super.key});

  @override
  State<ReservationForm> createState() => _ReservationFormState();
}

class _ReservationFormState extends State<ReservationForm> {
  DateTime? fechaSeleccionada;
  TimeOfDay? horaSeleccionada;
  Duration? duracion;
  final ReservaController reservaController = Get.put(ReservaController());

  //final _formKey = GlobalKey<FormState>();

  void _elegirFecha() async {
    final fecha = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(Duration(days: 30)),
    );
    if (fecha != null) setState(() => fechaSeleccionada = fecha);
  }

  void _elegirHora() async {
    final hora = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (hora != null) setState(() => horaSeleccionada = hora);
  }

  void _elegirDuracion() async {
    // Puedes usar un selector más avanzado si deseas
    final tiempo = await showDialog<Duration>(
      context: context,
      builder: (_) {
        Duration duracionSeleccionada = Duration(hours: 1);
        return AlertDialog(
          title: Text('Selecciona duración'),
          content: DropdownButton<Duration>(
            value: duracionSeleccionada,
            items: [
              for (var i = 1; i <= 4; i++)
                DropdownMenuItem(
                  value: Duration(hours: i),
                  child: Text('$i hora${i > 1 ? 's' : ''}'),
                ),
            ],
            onChanged: (valor) {
              if (valor != null) Navigator.pop(context, valor);
            },
          ),
        );
      },
    );

    if (tiempo != null) setState(() => duracion = tiempo);
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Column(
          children: [
            Center(
              child: Container(
                width: 40,
                height: 4,
                margin: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
            ),
            Center(
              child: Text(
                'Reservar Cancha',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20),
            Text('Selecciona fecha de reservación:'),
            SizedBox(height: 10),
            ItemSelection(
              onTap: _elegirFecha,
              child: Text(
                fechaSeleccionada != null
                    ? '${fechaSeleccionada!.toLocal()}'.split(' ')[0]
                    : 'Elige una fecha',
              ),
            ),
            SizedBox(height: 10),
            Text('Selecciona hora de inicio:'),
            SizedBox(height: 10),
            ItemSelection(
              onTap: _elegirHora,
              child: Text(
                horaSeleccionada != null
                    ? horaSeleccionada!.format(context)
                    : 'Elige una hora',
              ),
            ),
            SizedBox(height: 10),
            Text('¿Cuánto tiempo ocuparás la cancha?'),
            SizedBox(height: 10),
            ItemSelection(
              onTap: _elegirDuracion,
              child: Text(
                duracion != null
                    ? '${duracion!.inHours} hora${duracion!.inHours > 1 ? 's' : ''}'
                    : 'Elige duración',
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton.icon(
              onPressed: () {
                if (fechaSeleccionada != null &&
                    horaSeleccionada != null &&
                    duracion != null) {
                  // Aquí guardamos la reserva usando GetX
                  reservaController.agregarReserva(
                    Reserva(
                      fecha: fechaSeleccionada!,
                      hora: horaSeleccionada!,
                      duracion: duracion!,
                    ),
                  );
                  Navigator.pop(context); // cerrar modal
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Completa todos los campos')),
                  );
                }
              },
              icon: Icon(Icons.check),
              label: Text('Confirmar reservación'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                minimumSize: Size(double.infinity, 48),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ],
    );
  }
}

class ItemSelection extends StatelessWidget {
  const ItemSelection({super.key, required this.onTap, required this.child});

  final VoidCallback onTap;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 10),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(8),
        ),
        child: child,
      ),
    );
  }
}

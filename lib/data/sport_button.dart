import 'package:flutter/material.dart';
import 'package:reservacion_de_canchas_deportivas/models/reservacion.dart';
import 'package:reservacion_de_canchas_deportivas/src/widget/item_reservation_form.dart';
import 'package:reservacion_de_canchas_deportivas/src/widget/item_reservation_history.dart';
import 'package:reservacion_de_canchas_deportivas/src/widget/item_schedule_sheet.dart';

void mostrarFormularioReservacion(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
    ),
    builder: (context) {
      return Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
          top: 20,
          left: 20,
          right: 20,
        ),
        child: ItemReservationForm(),
      );
    },
  );
}

void mostrarHorariosCancha(BuildContext context, String canchaNombre, List<String> horarios) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
    ),
    builder: (context) => ScheduleSheet(
      canchaNombre: canchaNombre,
      horarios: horarios,
    ),
  );
}

void mostrarHistorialReservacion(BuildContext context, List<Reservacion> historialCancha) {
  showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * 0.8,
          child: HistorialReservaciones(historial: historialCancha),
        );
      },
    );
}
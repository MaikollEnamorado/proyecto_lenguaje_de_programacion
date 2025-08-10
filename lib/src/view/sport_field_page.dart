import 'package:flutter/material.dart';
import 'package:reservacion_de_canchas_deportivas/data/sports_fields_income.dart';
import 'package:reservacion_de_canchas_deportivas/models/reservacion.dart';
import 'package:reservacion_de_canchas_deportivas/src/widget/item_sport_field.dart';

class SportFieldPage extends StatelessWidget {
  const SportFieldPage({super.key, required this.tipo});

  final String tipo;

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> canchasFiltradas = sportsFieldsIncome
        .where((cancha) => cancha['tipo'] == tipo)
        .toList();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Center(child: const Text('Canchas deportivas'))),
      body: ListView.builder(
        itemCount: canchasFiltradas.length,
        itemBuilder: (context, index) {
          final cancha = canchasFiltradas[index];
          return ItemSportField(
            nombre: cancha['nombre'],
            tipo: cancha['tipo'],
            ubicacion: cancha['ubicacion'],
            imagenes: cancha['imagenes'] is List<String>
                ? cancha['imagenes']
                : [''], // Asegurarse de que sea una lista de cadenas
            horarios: cancha['horarios'] is List<String>
                ? cancha['horarios']
                : [''],
            historialCancha:
                cancha['reservacioneshistorial'] is List<Reservacion>
                ? cancha['reservacioneshistorial']
                : [], // Asegurarse de que sea una lista de cadenas
          );
        },
      ),
    );
  }
}

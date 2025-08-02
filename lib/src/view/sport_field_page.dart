import 'package:flutter/material.dart';
import 'package:reservacion_de_canchas_deportivas/data/sports_fields_income.dart';
import 'package:reservacion_de_canchas_deportivas/src/widget/item_sport_field.dart';

class SportFieldPage extends StatelessWidget {
  const SportFieldPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold
      (
      appBar: AppBar(
        title: Center(child: const Text('Canchas deportivas')),
      ),
      body: ListView.builder(
        itemCount: sportsFieldsIncome.length,
        itemBuilder: (context, index) {
          final cancha = sportsFieldsIncome[index];
          return ItemSportField(
            nombre: cancha['nombre'],
            tipo: cancha['tipo'],
            ubicacion: cancha['ubicacion'],
          );
        }
      )
    );
  }
}
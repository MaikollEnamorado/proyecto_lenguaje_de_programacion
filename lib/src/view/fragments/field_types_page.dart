import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:reservacion_de_canchas_deportivas/data/sports_income.dart';
import 'package:reservacion_de_canchas_deportivas/src/widget/item_sport.dart';

class FieldTypesPage extends StatelessWidget {
  const FieldTypesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: sportsIncome.length,
        itemBuilder: (context, index) {
          final cancha = sportsIncome[index];
          return ItemSport(
            nombre: cancha['nombre'],
            image: cancha['imagen'],
            onTape: () {
              context.goNamed('sportField', extra: {'tipo': cancha['tipo']});
            },
          );
        },
      );
  }
}
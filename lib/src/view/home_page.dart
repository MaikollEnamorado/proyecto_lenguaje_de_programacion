import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:reservacion_de_canchas_deportivas/data/sports_income.dart';
import 'package:reservacion_de_canchas_deportivas/src/widget/item_sport.dart';
import 'package:reservacion_de_canchas_deportivas/src/widget/side_menu.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key,});

  @override
  Widget build(BuildContext context) {
    return Scaffold
      (
      appBar: AppBar(
        title: Center(child: const Text('Canchas deportivas')),
      ),
      drawer: SideMenu(),
      body: ListView.builder(
        
        itemCount: sportsIncome.length,
        itemBuilder: (context, index) {
          final cancha = sportsIncome[index];
          return ItemSport(
            nombre: cancha['nombre'],
            image: cancha['imagen'],
            onTape: () {
              context.goNamed(
                'sportField',
                extra: {
                  'tipo': cancha['tipo'],
                },
              );
            },
          );
        },
      ), 
    );
  }
}


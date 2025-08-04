import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:reservacion_de_canchas_deportivas/src/view/home_page.dart';
import 'package:reservacion_de_canchas_deportivas/src/view/sport_field_page.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: GoRouter(
        initialLocation: '/home',
        routes: [
          GoRoute(
            path: '/home',
            name: 'home',
            builder: (context, state) => const HomePage(),
            routes: [
              GoRoute(
                path: '/sportField',
                name: 'sportField',
                builder: (context, state) {
                  final extra = state.extra as Map<String, dynamic>;
                  return SportFieldPage(tipo: extra['tipo'] as String);
                },
              ),
            ], 
        ),
        ]
    )
    );
  }
}
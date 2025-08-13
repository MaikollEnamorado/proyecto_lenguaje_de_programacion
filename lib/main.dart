import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get_storage/get_storage.dart';
import 'package:go_router/go_router.dart';
import 'package:reservacion_de_canchas_deportivas/src/view/home_page.dart';
import 'package:reservacion_de_canchas_deportivas/src/view/sport_field_page.dart';
import 'package:reservacion_de_canchas_deportivas/src/view/login_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(const MyApp());
} 

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Reservación de Canchas Deportivas',
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('es', 'ES'), // Español
      ],
      routerConfig: GoRouter(
        redirect: (context, state) {
          final loggedIn = GetStorage().read('loggedIn') ?? false;
          if (!loggedIn) {
            GetStorage().erase();
            return '/login'; // Redirige a la pantalla de login si no está logueado
          }
          return null;
        },
        initialLocation: '/home',
        routes: [
          GoRoute(
            path: '/home',
            name: 'home',
            builder: (context, state) => HomePage(),
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
          GoRoute(
            path: '/login',
            name: 'login',
            builder: (context, state) => const LoginPage(),
          ),
        ],
      ),
    );
  }
}
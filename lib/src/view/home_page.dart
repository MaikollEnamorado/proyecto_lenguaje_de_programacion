import 'package:flutter/material.dart';
import 'package:reservacion_de_canchas_deportivas/src/view/fragments/field_types_page.dart';
import 'package:reservacion_de_canchas_deportivas/src/view/fragments/historial_reservas_page.dart';
import 'package:reservacion_de_canchas_deportivas/src/widget/side_menu.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final pageController = PageController(initialPage: 0);

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: const Text(
            'Canchas deportivas',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 4, 66, 6),
        centerTitle: true,
      ),
      drawer: SideMenu(),
      body: PageView(
        controller: pageController,
        onPageChanged: (index) {
          setState(() {
            currentPage = index;
          });
        },
        children: [
          const FieldTypesPage(),
          HistorialReservasPage()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
        onTap: (index) {
          setState(() {
            currentPage = index;
          });
          pageController.animateToPage(
            index,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
        },
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.sports_soccer),
            label: 'Tipos de Canchas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'Historial de Reservas',
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:reservacion_de_canchas_deportivas/data/datos_preguntas_frecuentes.dart';

class PaginaPreguntasFrecuentes extends StatelessWidget {
  const PaginaPreguntasFrecuentes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.white),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text('Preguntas Frecuentes', style: TextStyle(color: Colors.white)),
          ],
        ),
      ),

      body: Stack(
        children: [
          Positioned.fill(
            child: Image.network(
              'https://images.unsplash.com/photo-1564397660393-8e944a5bea82?q=80&w=627&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
              fit: BoxFit.cover,
            ),
          ),

          Positioned.fill(
            child: Container(color: Colors.black.withOpacity(0.6)),
          ),
          Container(
            margin: const EdgeInsets.only(top: kToolbarHeight + 40),
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              itemCount: listaPreguntasRespuestas.length,
              itemBuilder: (context, indice) {
                final preguntaRespuesta = listaPreguntasRespuestas[indice];
                return Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        preguntaRespuesta.pregunta,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        preguntaRespuesta.respuesta,
                        style: const TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:reservacion_de_canchas_deportivas/data/datos_preguntas_frecuentes.dart';

class PaginaPreguntasFrecuentes extends StatelessWidget {
  const PaginaPreguntasFrecuentes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Preguntas Frecuentes')),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
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
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                Text(preguntaRespuesta.respuesta),
              ],
            ),
          );
        },
      ),
    );
  }
}

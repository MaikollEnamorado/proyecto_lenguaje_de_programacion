import 'package:flutter/material.dart';

class ItemSportField extends StatelessWidget {
  const ItemSportField(
    {super.key,
    required this.nombre,  
    required this.tipo,
    required this.ubicacion,
    });

  final String nombre;
  final String tipo;
  final String ubicacion;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8.0),
      child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(nombre,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Text(tipo,
            style: TextStyle(fontSize: 20,),
            ),
            Text(ubicacion,
            style: TextStyle(fontSize: 20,),
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: (){}, 
                    child: Text('Reservar')
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: (){}, 
                    child: Text('Horarios')
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: (){}, 
                    child: Text('Historial')
                  ),
                ),
              ],
            )
          ],
        ),
    );
  }
}
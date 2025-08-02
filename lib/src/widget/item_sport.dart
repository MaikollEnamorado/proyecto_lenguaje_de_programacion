import 'package:flutter/material.dart';

class ItemSport extends StatelessWidget {
  const ItemSport(
    {super.key,
    required this.nombre,
    required this.image,
    this.onTape});

  final String nombre;
  final String image;
  final VoidCallback? onTape;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8.0),
      child: InkWell(
        onTap: onTape,
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            Image.network(
              image,
              fit: BoxFit.fitWidth,
              width: double.infinity,
              
            ),
            Text(nombre,
              style: TextStyle(
                fontSize: 25, 
                fontWeight: FontWeight.bold,
                color: Colors.white),
              ),
          ],
        ),
      ),
    );
  }
}
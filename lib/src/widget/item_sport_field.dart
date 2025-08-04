import 'package:flutter/material.dart';
import 'package:reservacion_de_canchas_deportivas/data/reservation.dart';
import 'package:reservacion_de_canchas_deportivas/src/widget/item_text_button.dart';
class ItemSportField extends StatelessWidget {
  const ItemSportField(
    {super.key,
    required this.nombre,  
    required this.tipo,
    required this.ubicacion,
    this.imagenes
    });

  final String nombre;
  final String tipo;
  final String ubicacion;
  final List<String>? imagenes;

  @override
  Widget build(BuildContext context) {
    final imagenesValidas = imagenes?.where((img) => img.trim().isNotEmpty).toList() ?? [];
    double screenwidth = MediaQuery.of(context).size.width;
    double imageWidth = screenwidth * 0.3;
    return Container(
      margin: EdgeInsets.all(10.0),
      child: Material(
        elevation: 8.0,
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10,),
                Text(nombre,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,),
                ),
                SizedBox(height: 5,),
                Text(tipo,
                style: TextStyle(fontSize: 20,),
                ),
                SizedBox(height: 5,),
                Text(ubicacion,
                style: TextStyle(fontSize: 15,),
                ),
                SizedBox(height: 10,),
                 imagenesValidas.isNotEmpty ? Container(
                  margin: EdgeInsets.all(10.0),
                  child: LayoutBuilder(
                    builder: (context, constraints) {
                      return SizedBox(
                        height: imageWidth,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: imagenes?.length ?? 0,
                          itemBuilder: (context, index) {
                            return Row(
                              children: [
                                Image.network(
                                      imagenes![index],
                                      fit: BoxFit.cover,
                                      height: imageWidth,
                                    ),
                                SizedBox(width: 8.0), // Spacing between images
                              ],
                            );
                          }
                        ),
                      );
                    }
                  ),
                ) : SizedBox(height: 1,),
                SizedBox(height: 10,),
                Divider(),
                Row(     
                  children: [        
                    ItemTextButton(
                      label: 'Reservar',
                      icon: Icons.event_available,
                      onPressed: () => mostrarFormularioReservacion(context),
                    ),
                    SizedBox(
                      height: 25,
                      child: VerticalDivider(),
                    ),
                    ItemTextButton(
                      label: 'Horarios', 
                      icon: Icons.schedule, 
                      onPressed: () {}),
                    SizedBox(
                      height: 25,
                      child: VerticalDivider()),
                    ItemTextButton(
                      label: 'Historial', 
                      icon: Icons.history, 
                      onPressed: () {}),
                  ],
                ),
              ],
            ),
        ),
      ),
    );
  }
}


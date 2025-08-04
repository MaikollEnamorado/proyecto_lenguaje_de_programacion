import 'package:flutter/material.dart';

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
    return Container(
      margin: EdgeInsets.all(10.0),
      child: Material(
        elevation: 8.0,
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10,),
              Container(
                margin: EdgeInsets.all(10.0),
                child: Text(nombre,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, backgroundColor: const Color.fromARGB(255, 135, 173, 240)),
                ),
              ),
              SizedBox(height: 5,),
              Container(
                margin: EdgeInsets.all(10.0),
                child: Text(tipo,
                style: TextStyle(fontSize: 20,),
                ),
              ),
              SizedBox(height: 5,),
              Container(
                margin: EdgeInsets.all(10.0),
                child: Text(ubicacion,
                style: TextStyle(fontSize: 15,),
                ),
              ),
              SizedBox(height: 10,),
              imagenes != null && imagenes![0].trim().isNotEmpty ? Container(
                margin: EdgeInsets.all(10.0),
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    double screenwidth = MediaQuery.of(context).size.width;
                    double imageWidth = screenwidth * 0.3;
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
              Container(
                margin: EdgeInsets.all(10.0),
                child: Row(
                            
                  children: [

                    Expanded(
                      child: TextButton.icon(
                        onPressed: (){},
                        icon: Icon(Icons.event_available, color: Colors.blue), 
                        label: Text('Reservar')
                      ),
                    ),
                    SizedBox(
                      height: 25,
                      child: VerticalDivider(),
                    ),
                    Expanded(
                      child: TextButton.icon(
                        onPressed: (){}, 
                        icon: Icon(Icons.schedule, color: Colors.blue),
                        label: Text('Horarios')
                      ),
                    ),
                    SizedBox(
                      height: 25,
                      child: VerticalDivider()),
                    Expanded(
                      child: TextButton.icon(
                        onPressed: (){}, 
                        icon: Icon(Icons.history, color: Colors.blue),
                        label: Text('Historial')
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
      ),
    );
  }
}
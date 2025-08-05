import 'package:flutter/material.dart';

class ScheduleSheet extends StatelessWidget {
  final String canchaNombre;
  final List<String> horarios;

  const ScheduleSheet({
    super.key,
    required this.canchaNombre,
    required this.horarios,
  });

  @override
  Widget build(BuildContext context) {
    final horariosValidos = horarios.where((h) => h.trim().isNotEmpty).toList();
    return Wrap(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  width: 40,
                  height: 4,
                  margin: EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ),
              Text(
                'Horarios de $canchaNombre',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16),
              horariosValidos.isEmpty
                  ? Center(child: Text('No hay horarios disponibles.'))
                  : ListView.separated(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: horariosValidos.length,
                      separatorBuilder: (context, index) => Divider(),
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: Icon(Icons.schedule, color: Colors.blue),
                          title: Text(horarios[index]),
                        );
                      },
                    ),
              SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text('Cerrar'),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
import 'package:flutter/material.dart';
import 'package:reservacion_de_canchas_deportivas/src/widget/redes_sociales.dart';

class ProfileScreen extends StatelessWidget {
  final String name = "Canchas UNAH";
  final String email = "canchasunah@gmail.com";
  final String phone = "50497130847";
  final String mision =
      "Somos una empresa dedicada a la reservacion de canchas deportivas";
  final String vision =
      "Ser la mejor plataforma de reservacion de canchas deportivas a nivel nacional";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.white),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [Text('Perfil', style: TextStyle(color: Colors.white))],
        ),
      ),

      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  'https://images.unsplash.com/photo-1524107881021-3c21e6c75f4c?q=80&w=1074&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(color: Colors.black.withOpacity(0.7)),
          Padding(
            padding: EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: CircleAvatar(
                    radius: 70,
                    child: Icon(
                      Icons.account_circle,
                      size: 120,
                      color: Colors.amber,
                    ),
                  ),
                ),
                SizedBox(height: 24),
                Center(
                  child: Text(
                    name,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 24),
                Center(
                  child: Text(
                    mision,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 24),
                Center(
                  child: Text(
                    vision,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 24),
                Row(
                  children: [
                    Icon(Icons.email, color: Colors.amber),
                    SizedBox(width: 12),
                    Text(
                      email,
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(height: 12),
                Row(
                  children: [
                    Icon(Icons.phone, color: Colors.amber),
                    SizedBox(width: 12),
                    Text(
                      phone,
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ],
                ),
                const SocialMediaLinks(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialMediaLinks extends StatelessWidget {
  const SocialMediaLinks({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Column(
        children: [
          Text(
            'Síguenos en',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black54,
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: FaIcon(FontAwesomeIcons.facebook),
                color: Colors.blue,
                onPressed: () {
                  // Acción para Facebook
                },
              ),
              IconButton(
                icon: FaIcon(FontAwesomeIcons.instagram),
                color: Colors.purple,
                onPressed: () {
                  // Acción para Instagram
                },
              ),
              IconButton(
                icon: FaIcon(FontAwesomeIcons.tiktok),
                color: Colors.black,
                onPressed: () {
                  // Acción para TikTok
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

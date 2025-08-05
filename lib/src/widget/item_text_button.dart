import 'package:flutter/material.dart';

class ItemTextButton extends StatelessWidget {
  const ItemTextButton({
    super.key,
    required this.label,
    required this.icon,
    this.onPressed
  });
  final String label;
  final IconData icon;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton.icon(
        onPressed: onPressed, 
        icon: Icon(icon, color: Colors.blue), 
        label: Text(label),
        style: TextButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
          foregroundColor: Colors.blue,
        ),
      ),
    );
  }
}
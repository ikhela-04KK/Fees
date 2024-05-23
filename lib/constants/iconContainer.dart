// pour éviter de répéter container deux fois
// ignore_for_file: prefer_const_constructors, unused_element

import 'package:flutter/material.dart';

class IconContainer extends StatelessWidget {
  final IconData icon;

  const IconContainer({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(6),
      decoration: BoxDecoration(
        color: Color(0xFF1F1F1F),
        shape: BoxShape.circle,
      ),
      child: Icon(
        icon, 
        size: 20,
        color:  Color(0xFF97A3AB),
      ),
    );
  }
}

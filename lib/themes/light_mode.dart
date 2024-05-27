import 'package:flutter/material.dart';

ThemeData darkMode = ThemeData(
  colorScheme: ColorScheme.light(
    background: Colors.black,
    primary: Colors.black12, 
    secondary: Colors.black26, 
    inversePrimary: Colors.black54,
  )
);

ThemeData lightMode = ThemeData(
  colorScheme: ColorScheme.light(
    background: const Color.fromARGB(255, 255, 252, 252),
    primary: Color.fromARGB(255, 255, 250, 250), 
    secondary: Color.fromARGB(66, 183, 175, 175), 
    inversePrimary: Color.fromARGB(255, 255, 255, 255),
  )
);
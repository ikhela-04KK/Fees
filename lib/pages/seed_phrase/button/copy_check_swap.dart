// For Copy to clipboard
// ignore_for_file: prefer_const_constructors

import 'dart:math';

import 'package:flutter/material.dart';

class IconChangeButton extends StatefulWidget {
  const IconChangeButton({super.key});

  @override
  State<IconChangeButton> createState() => _IconChangeButtonState();
}

class _IconChangeButtonState extends State<IconChangeButton> {
  bool _isCopied = false;

  void _toggleIcon() {
    if(!_isCopied){
      setState(() {
      _isCopied = true;
    });
    }
    
  }
// Color(0xFF9FE625)
// Color(0xFF9FE625)
  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: _toggleIcon,
      style: TextButton.styleFrom(
        foregroundColor: Color(0xFF9FE625),
        textStyle: TextStyle(
          fontSize: 14,
          fontFamily: "jbm",
        ),
      ),
      label: Text(
        "Copier dans le presse-papier",
        style: TextStyle(color: Color(0xFF9FE625)),
      ),
      icon: Icon(
        _isCopied ? Icons.check : Icons.copy_all,
        size: 20.0,
        color: Color(0xFF053B06),
      ),
    );
  }
}

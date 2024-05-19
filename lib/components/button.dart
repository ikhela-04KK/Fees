import 'package:flutter/material.dart';

class ArrowButton extends StatelessWidget {
  final void Function()? onTap;
  final Widget child;
  const ArrowButton({super.key, required this.onTap, required this.child});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: child,
    );
  }
}
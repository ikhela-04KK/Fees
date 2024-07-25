import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUpHeaderWidget extends StatelessWidget {
  const SignUpHeaderWidget({
    super.key,
    required this.title,
    required this.image,
    required this.onBackPressed,
  });

  final String image, title;
  final VoidCallback onBackPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Colors.white,
            fontFamily: "jbm",
          ),
        ),
      ],
    );
  }
}

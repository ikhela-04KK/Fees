// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUpHeaderWidget extends StatelessWidget {
  const SignUpHeaderWidget(
    {
      super.key, 
      required this.title,
      required this.image, 
      required this.subTitle
    });

  final String image , title , subTitle; 
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SvgPicture.asset(
          image
        ), 
        Text(title,style: TextStyle()), 
        Text(subTitle, style:TextStyle())
      ],
    );
  }
}
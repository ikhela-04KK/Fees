// ignore_for_file: prefer_const_constructors

import 'package:cryto_wallet_3/constants/app_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IntroOne extends StatelessWidget {
  IntroOne({super.key});
  final Widget svgIcon = SvgPicture.asset(AppImages.aroundTheWorld);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Center(
        child: Container(
          color: Colors.black,
          decoration: BoxDecoration(
              border: Border.all(
                  color: Color(0xFF6BEF1A),
                  width: 1.0,
                  style: BorderStyle.solid)
              ),
              child: svgIcon,
        ),
      ),
    );
  }
}

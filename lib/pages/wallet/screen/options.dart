import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class OptionScreen extends StatelessWidget {
  const OptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea
    (
      child: Scaffold(
        body: Center(
          child: Container(
            width: 100,
            height: 100,
            child: Center(
              child: Lottie.asset(
                'assets/animation/wallet.json',
                // width: 500,
                height: 500, 
                repeat: true
              )
            ),
          ),
        ),
      )
    );
  }
}
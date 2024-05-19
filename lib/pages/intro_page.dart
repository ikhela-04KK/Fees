// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cryto_wallet_3/constants/colors.dart';
import 'package:flutter/material.dart';


class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // text
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "F", // Première lettre
                    style: TextStyle(
                      color: primaryColor,// Couleur spécifique pour la première lettre
                      fontWeight: FontWeight.bold,
                      fontSize: 72,
                    ),
                  ),
                  TextSpan(
                    text: "ees", // Reste du texte
                    style: TextStyle(
                      color: Colors.white, // Couleur pour le reste du texte
                      fontFamily: "jbm",
                      fontWeight: FontWeight.bold,
                      fontSize: 72,
                    ),
                  ),
                ],
              ),
            ),

            // subtitle
            const SizedBox(height: 12,), 

            Text(
              "rapide et moins chère", 
              style: TextStyle(
                color: Colors.white, 
                fontFamily: "jbm", 
                fontWeight: FontWeight.w100,
                fontSize: 20
              ),
            )

            // button for next 
          ],
        ),
      ),
    );
  }
}


// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cryto_wallet_3/constants/colors.dart';
import 'package:cryto_wallet_3/pages/onboarding.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  void initState() {
    super.initState();
    // Démarrer l'animation et naviguer après qu'elle soit terminée
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _startAnimation();
    });
  }

  Future<void> _startAnimation() async {
    // Attendre que l'animation soit terminée
    await Future.delayed(Duration(seconds: 4)); // Durée totale de l'animation
    // Naviguer vers la page suivante
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => OnboardingPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "F", // Première lettre
                    style: TextStyle(
                      color: primaryColor, // Couleur spécifique pour la première lettre
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
                   // subtitle
                ],
              ),
            ).animate().fade(delay: 2000.ms, begin: 0.1, end: 0.8).shake(duration: 1000.ms),
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
        ],
      ),
    );
  }
}

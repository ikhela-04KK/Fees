// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class FingerPrint extends StatelessWidget {
  const FingerPrint({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Biométrique"),
          centerTitle: true,
          leading: Icon(Icons.arrow_back),
        ),
        body: Center(
          child: Column(
            children: [
              Text(
                "Configurer Empreinte Digitale",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: "jbm",
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Text(
                "Plus de sécurité avec l'empreinte digital pour bien conserver votre wallet",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromARGB(255, 200, 176, 176),
                ),
              ),
              SizedBox(
                height: 65,
              ),
              Lottie.asset(
                "assets/animation/fingerprint.json",
              ),
              SizedBox(height: 116),
              TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    foregroundColor: Color(0xFF9FE625),
                    textStyle: TextStyle(
                      fontSize: 14,
                      fontFamily: "jbm",
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  ),
                  child: Text("Quitter maintenant")),
              SizedBox(height: 6),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF9FE625),
                      foregroundColor: Color.fromARGB(255, 4, 4, 4),
                      padding:
                          EdgeInsets.symmetric(horizontal: 60, vertical: 15),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                      textStyle: TextStyle(
                          fontSize: 14,
                          fontFamily: "jbm",
                          fontWeight: FontWeight.bold)),
                  child: Text(
                    "Suivant",
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

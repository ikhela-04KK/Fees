// ignore_for_file: prefer_const_constructors

import 'package:cryto_wallet_3/services/local_auth_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lottie/lottie.dart';

class FingerPrint extends StatefulWidget {
  FingerPrint({super.key});

  @override
  State<FingerPrint> createState() => _FingerPrintState();
}

class _FingerPrintState extends State<FingerPrint> {
  bool authenticate = false; 

  // verifier la capacité de prise en charge de la biometrie 
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Biométrique"),
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
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
                "Plus de sécurité avec l'empreinte digital pour bien conserver votre wallet.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromARGB(255, 149, 137, 137),
                ),
              ),
              SizedBox(
                height: 65,
              ),
              GestureDetector(
                onTap: () async {
                  final auth  = await LocalAuth.authenticate();
                  setState((){
                      authenticate = auth;
                  });
                },
                child: Lottie.asset(
                  "assets/animation/fingerprint.json",
                  repeat: false
                ),
              ),
              SizedBox(height: 90),
              TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    foregroundColor: Color(0xFF9FE625),
                    textStyle: TextStyle(
                      fontSize: 14,
                      fontFamily: "jbm",
                    ),
                    // padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  ),
                  child: Text("Quitter maintenant")),
              // SizedBox(height: 6),
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

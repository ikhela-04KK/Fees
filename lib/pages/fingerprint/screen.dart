// ignore_for_file: prefer_const_constructors

import 'package:cryto_wallet_3/constants/app_image.dart';
import 'package:cryto_wallet_3/services/local_auth_service.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class FingerPrint extends StatefulWidget {
  FingerPrint({super.key});

  @override
  State<FingerPrint> createState() => _FingerPrintState();
}

class _FingerPrintState extends State<FingerPrint> {
  bool authenticate = false;
  String assets = AppAnims.finger;


  // verifier la capacité de prise en charge de la biometrie
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _showOverlay(context);
    });
  }
  void _showOverlay(BuildContext context) {
    OverlayState overlayState = Overlay.of(context)!;
    OverlayEntry overlayEntry = OverlayEntry(
      builder: (context) => Positioned(
        top: 100,
        left: MediaQuery.of(context).size.width / 4,
        child: Material(
          color: Colors.transparent,
          child: Container(
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: Colors.black54,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Text(
              'Tapez ici pour scanner votre empreinte',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
              ),
            ),
          ),
        ),
      ),
    );
    overlayState.insert(overlayEntry);

    Future.delayed(Duration(seconds: 3), () {
      overlayEntry.remove();
    });
  }

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
                  color: Color(0xFF605C5C),
                ),
              ),
              SizedBox(
                height: 65,
              ),
              GestureDetector(
                onTap: () async {
                  final auth = await LocalAuth.authenticate();
                  setState(() {
                    authenticate = auth;
                  });
                  // change animation
                  if (authenticate) {
                    setState(() {
                      assets = AppAnims.checkInBox;
                    });
                  }
                },
                child: Tooltip(
                  
                  message: 'Touche to scan your finger',
                  
                  child: Lottie.asset(assets, repeat: false),
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

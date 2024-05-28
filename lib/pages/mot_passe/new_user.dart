// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class OdMotPass extends StatelessWidget {
  const OdMotPass({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.white,
          leading: Icon(Icons.arrow_back),
          centerTitle: true,
          title: Text(
            "Password"
          ),
        ),
      
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 30,),
              Text(
                "Phrase Secrète",
                style: TextStyle(
                    fontFamily: "jbm", 
                    fontSize: 24, 
                    fontWeight: FontWeight.bold, 
                    color: Colors.white
                    ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Enregister votre phrase sécrète , \n Il servira à récupérer votre wallet en cas de perte",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromARGB(255, 160, 154, 154),
                    fontFamily: "jbm",
                    fontSize: 12,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      
      ),
    );
  }
}
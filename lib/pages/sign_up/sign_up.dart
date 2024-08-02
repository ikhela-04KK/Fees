// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:fees/constants/sizes.dart';
import 'package:fees/pages/home_page/home_page.dart';
import 'package:fees/pages/sign_up/SignUpHeaderWidget.dart';
import 'package:fees/constants/images.dart';
import 'package:flutter/material.dart';
import 'package:fees/pages/securite/otp_page/otp_screen.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(tDefaultSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SignUpHeaderWidget(
                  title: "Créer un portefeuille",
                  image: tWelcomeScreenImage,
                  onBackPressed: () {},
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 80, horizontal: 40),
                  child: Form(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextFormField(
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                              label: Text("Nom & Prenom"),
                              prefixIcon: Icon(
                                Icons.person_2_outlined,
                                color: Color(0xFF9FE625),
                              ),
                              border: OutlineInputBorder(),
                              labelStyle: TextStyle(color: Colors.white),
                              iconColor: Color(0xFF9FE625),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 2.0, color: Color(0xFF28536B)))),
                        ),
                        SizedBox(height: 10),
                        TextFormField(
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                              label: Text("Nom d'Utilisateur"),
                              prefixIcon: Icon(
                                Icons.person_2_outlined,
                                color: Color(0xFF9FE625),
                              ),
                              border: OutlineInputBorder(),
                              labelStyle: TextStyle(color: Colors.white),
                              iconColor: Color(0xFF9FE625),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 2.0, color: Color(0xFF28536B)))),
                        ),
                        SizedBox(height: 10),
                        TextFormField(
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                              label: Text("Email"),
                              prefixIcon: Icon(
                                Icons.mail_outlined,
                                color: Color(0xFF9FE625),
                              ),
                              border: OutlineInputBorder(),
                              labelStyle: TextStyle(color: Colors.white),
                              iconColor: Color(0xFF9FE625),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 2.0, color: Color(0xFF28536B)))),
                        ),
                        SizedBox(height: 10),
                        TextFormField(
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                              label: Text("Numero Téléphone"),
                              prefixIcon: Icon(
                                Icons.numbers,
                                color: Color(0xFF9FE625),
                              ),
                              border: OutlineInputBorder(),
                              labelStyle: TextStyle(color: Colors.white),
                              iconColor: Color(0xFF9FE625),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 2.0, color: Color(0xFF28536B)))),
                        ),
                        SizedBox(height: 10),
                        TextFormField(
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                              label: Text("Mot De Passe"),
                              prefixIcon: Icon(
                                Icons.security_outlined,
                                color: Color(0xFF9FE625),
                              ),
                              border: OutlineInputBorder(),
                              labelStyle: TextStyle(color: Colors.white),
                              iconColor: Color(0xFF9FE625),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 2.0, color: Color(0xFF28536B)))),
                        ),
                        SizedBox(height: 10),
                        TextFormField(
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                              label: Text("Confirmer Mot De Passe"),
                              prefixIcon: Icon(
                                Icons.lock_clock_outlined,
                                color: Color(0xFF9FE625),
                              ),
                              border: OutlineInputBorder(),
                              labelStyle: TextStyle(color: Colors.white),
                              iconColor: Color(0xFF9FE625),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 2.0, color: Color(0xFF28536B)))),
                        ),
                        SizedBox(height: 40),
                        ElevatedButton(
                            onPressed: () {
                                Navigator.push(
                              context, 
                              MaterialPageRoute(builder: (context){
                                return AuthentificationScreen();
                              })
                            );
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFF9FE625),
                                foregroundColor: Color.fromARGB(255, 4, 4, 4),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 60, vertical: 15),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0)),
                                textStyle: TextStyle(
                                    fontSize: 14,
                                    fontFamily: "jbm",
                                    fontWeight: FontWeight.bold)),
                            child: Text(
                              "S'inscrire",
                            ))
                      ],
                    ),
                  ),
                )
                // SignUpFooterWidget()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

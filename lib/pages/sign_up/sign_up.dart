// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cryto_wallet_3/constants/sizes.dart';
import 'package:cryto_wallet_3/pages/sign_up/SignUpHeaderWidget.dart';
import 'package:cryto_wallet_3/constants/images.dart';
import 'package:flutter/material.dart';

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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SignUpHeaderWidget(
                  title: "Rejoignez-Nous",
                  image: tWelcomeScreenImage,
                  subTitle: "Créer votre profile pour rejoindre au nouveau système financier",
                ), 
                Container(
                  padding: EdgeInsets.symmetric(vertical: 30.0-10.0),
                  child: Form(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        TextFormField(
                          decoration: InputDecoration(
                            label: Text("Nom & Prenom"), 
                            prefixIcon: Icon(
                              Icons.person_2_outlined, 
                              color:Color(0xFF9FE625) ,
                            ), 
                            border: OutlineInputBorder(),
                            labelStyle: TextStyle(color: Colors.white),
                            iconColor: Color(0xFF9FE625), 
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 2.0, color:Color(0xFF28536B) )
                            )
                          ),
                        ), 
                        SizedBox(height: 10),
                        TextFormField(
                          decoration: InputDecoration(
                            label: Text("Nom d'Utilisateur"), 
                            prefixIcon: Icon(
                              Icons.person_2_outlined, 
                              color:Color(0xFF9FE625) ,
                            ), 
                            border: OutlineInputBorder(),
                            labelStyle: TextStyle(color: Colors.white),
                            iconColor: Color(0xFF9FE625), 
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 2.0, color:Color(0xFF28536B) )
                            )
                          ),
                        ), 
                    SizedBox(height: 10),

                        TextFormField(
                          decoration: InputDecoration(
                            label: Text("Email"), 
                            prefixIcon: Icon(
                              Icons.mail_outlined, 
                              color:Color(0xFF9FE625) ,
                            ), 
                            border: OutlineInputBorder(),
                            labelStyle: TextStyle(color: Colors.white),
                            iconColor: Color(0xFF9FE625), 
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 2.0, color:Color(0xFF28536B) )
                            )
                          ),
                        ), 
                        SizedBox(height: 10),

                            TextFormField(
                          decoration: InputDecoration(
                            label: Text("Numero Téléphone"), 
                            prefixIcon: Icon(
                              Icons.numbers, 
                              color:Color(0xFF9FE625) ,
                            ), 
                            border: OutlineInputBorder(),
                            labelStyle: TextStyle(color: Colors.white),
                            iconColor: Color(0xFF9FE625), 
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 2.0, color:Color(0xFF28536B) )
                            )
                          ),
                        ), 
                        SizedBox(height: 10),

                        TextFormField(
                          decoration: InputDecoration(
                            label: Text("Mot De Passe"), 
                            prefixIcon: Icon(
                              Icons.security_outlined, 
                              color:Color(0xFF9FE625) ,
                            ), 
                            border: OutlineInputBorder(),
                            labelStyle: TextStyle(color: Colors.white),
                            iconColor: Color(0xFF9FE625), 
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 2.0, color:Color(0xFF28536B) )
                            )
                          ),
                        ), 
                      SizedBox(height: 10),

                        TextFormField(
                          decoration: InputDecoration(
                            label: Text("Confirmer Mot De Passe"), 
                            prefixIcon: Icon(
                              Icons.lock_clock_outlined, 
                              color:Color(0xFF9FE625) ,
                            ), 
                            border: OutlineInputBorder(),
                            labelStyle: TextStyle(color: Colors.white),
                            iconColor: Color(0xFF9FE625), 
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 2.0, color:Color(0xFF28536B) )
                            )
                          ),
                        ), 
                          SizedBox(height: 40),
                  ElevatedButton
                  (
                  onPressed: (){}, 
          
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF9FE625),
                    foregroundColor: Color.fromARGB(255, 4, 4, 4),
                    padding: EdgeInsets.symmetric(horizontal: 60, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)
                    ),
                    textStyle: TextStyle(
                      fontSize: 14,
                      fontFamily: "jbm",
                      fontWeight: FontWeight.bold
                    )
                  ),
                  child: Text(
                    "S'inscrire",
                  )
                  )
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
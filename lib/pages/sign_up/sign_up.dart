// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:fees/constants/sizes.dart';
import 'package:fees/pages/sign_up/SignUpHeaderWidget.dart';
import 'package:fees/constants/images.dart';
import 'package:flutter/material.dart';
import 'package:fees/pages/securite/otp_page/otp_screen.dart';
import 'package:fees/pages/wallet/wallet_provider.dart';
import 'package:provider/provider.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();

}

class _SignUpState extends State<SignUp>{

  @override
  Widget build(BuildContext context) {

  final TextEditingController nameController = TextEditingController(); 
  final TextEditingController refIdController = TextEditingController(); 


  // final CreateWalletProvider walletData=Provider.of<CreateWalletProvider>(context,listen:false);
  @override
  void dispose(){
    nameController.dispose(); 
    refIdController.dispose();
  }
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Consumer<CreateWalletProvider>(
            builder:(context, provider, child) {
              return Container(
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
                          controller: nameController,
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
                                      width: 2.0, color: Color(0xFF28536B)))
                                      ),
                        ),
                        SizedBox(height: 10),
                        TextFormField(
                          controller: refIdController,
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
                        SizedBox(height: 40),
                        ElevatedButton(
                            onPressed: () async {
                                await provider.createWallet(
                                  name:nameController.text , refId: refIdController.text
                                );
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
          );
            }
          ),
        ),
      ),
    );
  }
}

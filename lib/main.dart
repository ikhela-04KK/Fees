// ignore_for_file: prefer_const_constructors

import 'package:cryto_wallet_3/pages/intro_screen/intro_page.dart';
import 'package:cryto_wallet_3/pages/swap_pay/swap_pay_const.dart';
import 'package:cryto_wallet_3/themes/light_mode.dart';
import 'package:flutter/material.dart';

void main() async {

  // charger tous les composants avant le lancement de l'application 
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fees',
      // theme: lightMode,
      theme:lightMode,
      home: SwapPay(),
      debugShowCheckedModeBanner: false,
      );
  }
}
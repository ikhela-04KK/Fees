// ignore_for_file: prefer_const_constructors

// import 'package:fees/pages/intro_screen/intro_page.dart';
// import 'package:fees/pages/fingerprint/screen.dart';
import 'package:fees/pages/fingerprint/screen.dart';
import 'package:fees/pages/home_page/home_page.dart';
import 'package:fees/pages/seed_phrase/screen.dart';
import 'package:fees/pages/wallet/screen/options.dart';
// import 'package:fees/pages/swap_pay/swap_pay_const.dart';
import 'package:fees/themes/light_mode.dart';
import 'package:flutter/material.dart';
import 'package:fees/pages/intro_screen/onboarding.dart';
import 'package:fees/pages/sign_up/sign_up.dart';
import 'package:fees/pages/mot_passe/new_user.dart';


void main() async {
  // charger tous les composants avant le lancement de l'application 
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fees',
      theme:darkMode,
      home: HomePage(),   // OptionScreen(),
      debugShowCheckedModeBanner: false,
      );
  }
}

class Login extends StatelessWidget {
  const Login({super.key});
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}


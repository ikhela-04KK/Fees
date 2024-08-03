// ignore_for_file: prefer_const_constructors
import 'package:fees/pages/deposit_option/screen.dart';
import 'package:fees/pages/deposit_option/details_deposit.dart';
import 'package:fees/pages/securite/fingerprint/screen.dart';
import 'package:fees/pages/home_page/home_page.dart';
import 'package:fees/pages/seed_phrase/screen.dart';
import 'package:fees/pages/send_usdc/send_token.dart';
import 'package:fees/pages/send_usdc/sucess_sending.dart';
import 'package:fees/pages/wallet/screen/options.dart';
import 'package:fees/pages/send_usdc/adress_item.dart';
import 'package:fees/pages/send_usdc/details_sending.dart';
import 'package:fees/themes/light_mode.dart';
import 'package:flutter/material.dart';
import 'package:fees/pages/intro_screen/intro_page.dart';
import 'package:fees/pages/intro_screen/onboarding.dart';
import 'package:fees/pages/sign_up/sign_up.dart';
import 'package:fees/pages/securite/new_user.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:fees/pages/securite/otp_page/otp_screen.dart';
// import 'package:fees/pages/home_page/new_home.dart';


void main() async {
  // charger tous les composants avant le lancement de l'application 
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
      home:IntroPage(),     //OptionScreen
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


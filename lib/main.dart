// ignore_for_file: prefer_const_constructors
import 'package:fees/components/animation/loading_provider.dart';
import 'package:fees/pages/wallet/wallet_provider.dart';
import 'package:fees/themes/light_mode.dart';
import 'package:flutter/material.dart';
import 'package:fees/pages/intro_screen/intro_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'package:get/get.dart';

void main() async {
  // charger tous les composants avant le lancement de l'application 
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    MultiProvider(
      providers: [
      ChangeNotifierProvider(create: (_) => LoadingProvider(),), 
      ChangeNotifierProvider(create: (context) => WalletProvider()),
      ChangeNotifierProvider<CreateWalletProvider>(create: (_) => CreateWalletProvider()),
    ], 
    child: MyApp(),
      )
  );
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
    return GetMaterialApp(
      title: 'Fees',
      theme:darkMode,
      home:IntroPage(),     //OptionScreen
      debugShowCheckedModeBanner: false,
      );
  }
}


// ignore_for_file: prefer_const_constructors

import 'package:cryto_wallet_3/helpers/routes.dart';
import 'package:cryto_wallet_3/pages/swap_pay/review_swap_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';



class SwapPay extends StatefulWidget {
  const SwapPay({super.key});

  @override
  State<SwapPay> createState() => _SwapPayState();
}

class _SwapPayState extends State<SwapPay> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_){
        return ;
      },
      child: Consumer(
        builder: (BuildContext context, value, Widget? child) {
          return MaterialApp(


            // observer l'évènement lié à la boîte de diaglogue
            navigatorObservers: [FlutterSmartDialog.observer],
            builder: FlutterSmartDialog.init(),
            debugShowCheckedModeBanner: false,
            initialRoute: Routes.home,
              onGenerateRoute: (RouteSettings settings) {
                return Routes.fadeThrough(settings, (context) {

                  if (settings.name ==Routes.home) {
                    return ReviewSwapScreen ();
                  }

                  return const Center(child: CircularProgressIndicator());
                });
              },
          );
        }
      ),
      );
  }
}
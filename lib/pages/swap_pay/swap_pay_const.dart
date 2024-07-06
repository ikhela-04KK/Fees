// // ignore_for_file: prefer_const_constructors

// import 'package:fees/helpers/routes.dart';
// import 'package:fees/pages/swap_pay/review_swap_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';



// class SwapPay extends StatefulWidget {
//   const SwapPay({super.key});

//   @override
//   State<SwapPay> createState() => _SwapPayState();
// }

// class _SwapPayState extends State<SwapPay> {
//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider(
//       create: (_){
//         return ;
//       },
//       child: Consumer(
//         builder: (BuildContext context, value, Widget? child) {
//           return MaterialApp(


//             // observer l'évènement lié à la boîte de diaglogue
//             navigatorObservers: [FlutterSmartDialog.observer],
//             builder: FlutterSmartDialog.init(),
//             debugShowCheckedModeBanner: false,
//             initialRoute: Routes.home,
//               onGenerateRoute: (RouteSettings settings) {
//                 return Routes.fadeThrough(settings, (context) {

//                   if (settings.name ==Routes.home) {
//                     return ReviewSwapScreen ();
//                   }

//                   return const Center(child: CircularProgressIndicator());
//                 });
//               },
//           );
//         }
//       ),
//       );
//   }
// }





// Center(
//       child:FutureBuilder<double?>(
//         future: solanaHelper.getTestnetBalance(),
//         builder: (context, snapshot) {
//           if(snapshot.connectionState == ConnectionState.waiting){
//             return const CircularProgressIndicator();
//           }
//           else if (snapshot.connectionState == ConnectionState.done){
//             if (snapshot.hasError){
//               return const Padding(padding: 
//               EdgeInsets.all(8.0), 
//               child: Text(
//                 'Error: An error occurred while fetching the balance',
//                   textAlign: TextAlign.center,
//               ),
//             );
//             } else if (snapshot.hasData){
//               final balance = snapshot.data ?? 0.0; 
//               return InkWell(
//                 onTap: (){
//                   showDialog(
//                   context: context, 
//                   builder: (BuildContext context) {
//                   return OpenPopPup(); 
//                   }
//                   );
                  
//                 },
//                 child: Container(
//                 width: 100,
//                 height: 150,
//                 child: Center(child: Text(balance.toStringAsFixed(2),),
//               ),
//               ),
//               );
//             }
//           }
//           return const Text("Balance non disponible");
//         },
//       )
//     );
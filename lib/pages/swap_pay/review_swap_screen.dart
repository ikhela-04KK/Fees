// // ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

// import 'package:fees/constants/solana_helper.dart';
// import 'package:fees/constants/swap_pop_helper.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

// import 'package:solana_web3/solana_web3.dart' as web3;
// import 'package:solana_web3/solana_web3.dart';

// class ReviewSwapScreen extends StatefulWidget {
//   const ReviewSwapScreen({super.key});

//   @override
//   State<ReviewSwapScreen> createState() => _ReviewSwapScreenState();
// }

// class _ReviewSwapScreenState extends State<ReviewSwapScreen> {
//   @override
//   late BlockhashWithExpiryBlockHeight blockhash;
//   String _solAmount = '0.0';
//   String _usdtEquivalent = '0.0';
//   final solanaHelper = SolanaHelper(
//     solAdress: '8Nm6jv1281Wj988SgK1WRBWbVDHJNC8MJEF5K8uwdiZn',
//     balance: 50.0,
//     exchangeRate: 145,
//     connection: Connection(Cluster.devnet),
//   );

//   TextEditingController xxx = TextEditingController();
//   // TextEditingController wallet = new TextEditingController();

//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//             centerTitle: true,
//             title: Container(
//               child: Text(
//                 "Deposer",
//                 style: TextStyle(fontWeight: FontWeight.bold),
//               ),
//             )),
//         body: Center(
//             child: FutureBuilder<double?>(
//                 future: solanaHelper.getTestnetBalance(),
//                 builder: (context, snapshot) {
//                   if (snapshot.connectionState == ConnectionState.done) {
//                     if (snapshot.hasError) {
//                       return Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Text('Error: ${snapshot.error}',
//                             textAlign: TextAlign.center),
//                       );
//                     }

//                     final balance = snapshot.data ?? 0.0;

//                     return Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Expanded(
//                               child: SingleChildScrollView(
//                                   child: Padding(
//                                       padding: const EdgeInsets.all(12.0),
//                                       child: Column(children: [
//                                         Stack(children: [
//                                           Column(children: [
//                                             Container(
//                                               padding: EdgeInsets.all(20.0),
//                                               decoration: BoxDecoration(
//                                                 borderRadius:
//                                                     BorderRadius.circular(15),
//                                               ),
//                                               child: InkWell(
//                                                   onTap: () {
//                                                     OpenPopPup();
//                                                   },
//                                                   child: Padding(
//                                                       padding:
//                                                           const EdgeInsets.all(
//                                                               8.0),
//                                                       child: Row(
//                                                           mainAxisAlignment:
//                                                               MainAxisAlignment
//                                                                   .spaceBetween,
//                                                           children: [
//                                                             Expanded(
//                                                               child: Column(
//                                                                 mainAxisAlignment:
//                                                                     MainAxisAlignment
//                                                                         .start,
//                                                                 children: [
//                                                                   Text(
//                                                                     "You pay",
//                                                                     textAlign:
//                                                                         TextAlign
//                                                                             .left,
//                                                                   ),
//                                                                   SizedBox(
//                                                                       height:
//                                                                           7),
//                                                                   Text(
//                                                                     _solAmount,
//                                                                     textAlign:
//                                                                         TextAlign
//                                                                             .left,
//                                                                   )
//                                                                 ],
//                                                               ),
//                                                             ),
//                                                           ]))),
//                                             ),
//                                             SizedBox(height: 20),
//                                                  Positioned.fill(
//                                   child: Align(
//                                     alignment: Alignment.center,
//                                     child: CircleAvatar(
//                                       backgroundColor: Colors.black12,
//                                       radius: 25,
//                                       child: Icon(
//                                         Icons.swap_vert,
//                                         color: Colors.white,
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                                           ]
//                                           )
//                                         ]
//                                         )
//                                       ]
//                                       )
//                                       )
//                                       )
//                                       ),
//                           Expanded(
//                             child: Column(
//                               children: [
//                                 Text(
//                                   "Balance: $balance",
//                                   textAlign: TextAlign.left,
//                                 ),
//                                 SizedBox(height: 7),
//                                 Container(
//                                   width: 100,
//                                   height: 50,
//                                   decoration: BoxDecoration(
//                                     borderRadius: BorderRadius.circular(25),
//                                     border: Border.all(color: Colors.black),
//                                   ),
//                                   child: Row(
//                                     mainAxisAlignment:
//                                         MainAxisAlignment.spaceEvenly,
//                                     children: [
//                                       CircleAvatar(
//                                         backgroundImage: AssetImage(
//                                             'assets/images/solana_logo.png'),
//                                         maxRadius: 10,
//                                       ),
//                                       Text(
//                                         'SOL',
//                                         style: TextStyle(
//                                           fontWeight: FontWeight.bold,
//                                         ),
//                                       ),
//                                       Icon(Icons.keyboard_arrow_down),
//                                     ],
//                                   ),
//                                 )
//                               ],
//                             ),
//                           ),
//                           Expanded(
//                             child: Column(
//                               children: [
//                                 Text(
//                                   'USDT:$_usdtEquivalent',
//                                   textAlign: TextAlign.left,
//                                 ),
//                                 SizedBox(height: 7),
//                                 Container(
//                                   width: 100,
//                                   height: 50,
//                                   decoration: BoxDecoration(
//                                     borderRadius: BorderRadius.circular(25),
//                                     border: Border.all(
//                                       color: Colors.black87,
//                                     ),
//                                   ),
//                                   child: Row(
//                                     mainAxisAlignment:
//                                         MainAxisAlignment.spaceEvenly,
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.center,
//                                     children: [
//                                       CircleAvatar(
//                                         backgroundImage: AssetImage(
//                                             'assets/images/usdticon.png'),
//                                         maxRadius: 10,
//                                       ),
//                                       Text(
//                                         'USDT',
//                                         style: TextStyle(
//                                           fontWeight: FontWeight.bold,
//                                         ),
//                                       ),
//                                       Icon(Icons.keyboard_arrow_down),
//                                     ],
//                                   ),
//                                 )
//                               ],
//                             ),
//                           ),
//                         ]);
//                   }
//                   return const CircularProgressIndicator();
//                 })));
//   }
// }

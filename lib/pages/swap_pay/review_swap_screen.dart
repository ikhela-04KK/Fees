// ignore_for_file: prefer_const_constructors

import 'package:cryto_wallet_3/constants/solana_helper.dart';
import 'package:cryto_wallet_3/constants/swap_pop_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:solana_web3/solana_web3.dart' as web3;
import 'package:solana_web3/solana_web3.dart';



class ReviewSwapScreen extends StatefulWidget {
  const ReviewSwapScreen({super.key});

  @override
  State<ReviewSwapScreen> createState() => _ReviewSwapScreenState();
}

class _ReviewSwapScreenState extends State<ReviewSwapScreen> {
  @override

  late BlockhashWithExpiryBlockHeight blockhash; 
   final solanaHelper = SolanaHelper(
    solAdress: '8Nm6jv1281Wj988SgK1WRBWbVDHJNC8MJEF5K8uwdiZn',
    balance: 50.0,
    exchangeRate: 145,
    connection: Connection(Cluster.devnet),
  );
  
  TextEditingController xxx = TextEditingController();
  // TextEditingController wallet = new TextEditingController();
  
  Widget build(BuildContext context) {
    
    return Center(
      child:FutureBuilder<double?>(
        future: solanaHelper.getTestnetBalance(),
        builder: (context, snapshot) {
          if(snapshot.connectionState == ConnectionState.waiting){
            return const CircularProgressIndicator();
          }
          else if (snapshot.connectionState == ConnectionState.done){
            if (snapshot.hasError){
              return const Padding(padding: 
              EdgeInsets.all(8.0), 
              child: Text(
                'Error: An error occurred while fetching the balance',
                  textAlign: TextAlign.center,
              ),
            );
            } else if (snapshot.hasData){
              final balance = snapshot.data ?? 0.0; 
              return InkWell(
                onTap: (){
                  showDialog(
                  context: context, 
                  builder: (BuildContext context) {
                  return OpenPopPup(); 
                  }
                  );
                  
                },
                child: Container(
                width: 100,
                height: 150,
                child: Center(child: Text(balance.toStringAsFixed(2),),
              ),
              ),
              );
            }
          }
          return const Text("Balance non disponible");
        },
      )
    );
  }
} 
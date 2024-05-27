import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:cryto_wallet_3/constants/solana_helper.dart';
import 'package:solana_web3/solana_web3.dart';


class OpenPopPup extends StatefulWidget {
  const OpenPopPup({super.key}); // add buildContext to impose using of context in another package

  @override
  State<OpenPopPup> createState() => _OpenPopPupState();
}

class _OpenPopPupState extends State<OpenPopPup> {
  @override
  String _solAmount = '0.0';
  String _usdtEquivalent = '0.0';
  final solanaHelper = SolanaHelper(
    solAdress: '8Nm6jv1281Wj988SgK1WRBWbVDHJNC8MJEF5K8uwdiZn',
    balance: 50.0,
    exchangeRate: 145,
    connection: Connection(Cluster.devnet),
  );
  TextEditingController xxx = TextEditingController();

  Widget build(BuildContext context) {
    return AlertDialog(
          title: const Text("Entrer le montant à échanger"),
          content: TextField(
            keyboardType: TextInputType.number,
            controller: xxx,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          ),
          actions: [
            ElevatedButton(
              onPressed: (){
                if (xxx.text.isNotEmpty) {
                  setState(() {
                    _solAmount = xxx.text;
                    _usdtEquivalent =
                        solanaHelper.calculateEquivalentUSDT(double.parse(_solAmount))
                            .toString();
                  });
                  Navigator.of(context).pop();
                } else {
                  Navigator.of(context).pop();
              }
              },
              child: const Text("OK"),
            )
          ],
        );;
  }
}
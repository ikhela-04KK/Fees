// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:fees/constants/app_image.dart';
import 'package:fees/pages/send_usdc/details_sending.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:provider/provider.dart';
import 'package:fees/pages/wallet/wallet_provider.dart'; 

class SendFundsScreen extends StatefulWidget {

  const SendFundsScreen({super.key});

  @override
  State<SendFundsScreen> createState() => _SendFundsScreenState();
}

class _SendFundsScreenState extends State<SendFundsScreen> {
  final TextEditingController _sendTokenController = TextEditingController();


  @override
  void dispose() {
    _sendTokenController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final walletProvider = Provider.of<WalletProvider>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 9, 9, 9),
        foregroundColor: Colors.white,
        title: Text(
          'Envoyer les fonds', 
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Destinataire',
              style: TextStyle(color: Colors.grey[400]),
            ),
            SizedBox(height: 10.0),
            Row(
              children: [
                Icon(
                  Iconsax.wallet,
                  size: 40.0,
                  color: Colors.white,
                ),
                SizedBox(width: 16.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Overstock',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.white
                      ),
                    ),
                    Text(
                      'F9fa — 6.61m',
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Montant',
                  style: TextStyle(color: Colors.grey[400]),
                ),
                Text(
                  'Maximum 1000',
                  style: TextStyle(color: Colors.grey[400]),
                ),
              ],
            ),
            SizedBox(height: 10.0),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 8, 8, 8),
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(color: Color.fromARGB(255, 255, 255, 255))
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.blue,
                    child: SvgPicture.asset(
                      AppImages.usdc,
                      // width: 300,
                      height: 50,
                    ),
                  ),
                  SizedBox(width: 16.0),
                  Expanded(
                    child: Text(
                      'USDC',
                      style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                  ),
                  SizedBox(width: 16.0),
                  Container(
                    width: 80, // Adjust width as needed
                    child: TextField(
                      style: TextStyle(color: Colors.white),
                      cursorColor: Colors.white,
                      keyboardType: TextInputType.number,
                      controller: _sendTokenController,
                      decoration: InputDecoration(
                        hintText: '0.00',
                        hintStyle: TextStyle(color: Colors.white54),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white54),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                      // onChanged: _convertCfaToUsdc,
                    ),
                  )
                ],
              ),
            ),
            Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF9FE625),
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                onPressed: () {
                  double token = double.tryParse(_sendTokenController.text) ?? 0.0;
                  double usdcConvert = token*600; 
                  walletProvider.purchaseUSDC(usdcConvert, 600);
                  
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailsSendingScreen(token:token,usdcConvert: usdcConvert, )),
                  );
                },
                child: Text(
                  'Continuer',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:fees/pages/send_usdc/sucess_sending.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class DetailsSendingScreen extends StatelessWidget {
  final double token;
  final double usdcConvert;
  const DetailsSendingScreen({super.key, required this.token, required this.usdcConvert});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Résumé',
          style: TextStyle(
            color: Colors.white
          ),
        
        ),
      ),
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children:<Widget>[
            Container(
              child: Center(
                child: Icon(
                  Iconsax.send_2,
                  size: 150,
                  color: Color(0xFF9FE625),
                ),
              ),
            ),
            SizedBox(height:20),
            Text(
              '${token.toStringAsFixed(2)} USDC',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
            SizedBox(height: 5),
            Icon(Iconsax.arrow_swap,color: Color(0xFF9FE625)),
            SizedBox(height: 5),
            Text(
              '${usdcConvert.toStringAsFixed(2)} F CFA',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            SizedBox(height: 30),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'À',
                    style: TextStyle(color: Colors.white70),
                  ),
                  Text(
                    'Overstock (0xabc...245)',
                    style: TextStyle(color: Color(0xFF9FE625), fontSize: 16),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Réseau',
                    style: TextStyle(color: Colors.white70),
                  ),
                  Text(
                    'Solana Devnet',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Frais du réseau',
                    style: TextStyle(color: Colors.white70),
                  ),
                  Text(
                    '\$0.0008',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Frais du réseau en FCFA',
                    style: TextStyle(color: Colors.white70),
                  ),
                  Text(
                    '0.48 XOF',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SuccessPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF9FE625),
                padding: EdgeInsets.symmetric(vertical: 16),
              ),
              child: Text(
                'Envoyer',
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

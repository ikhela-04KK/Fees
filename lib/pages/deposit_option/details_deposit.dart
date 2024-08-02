// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, use_key_in_widget_constructors

import 'package:fees/pages/deposit_option/succes_transaction.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Faire un dépôt',
      theme: ThemeData.dark(),
      home: DepositDetailsScreen(),
    );
  }
}


class DepositDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Handle back button press
          },
        ),
        title: Text('MTN'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(
                  'assets/images/mtn_momo.jpg'), // Path to your Wave icon
            ),
            SizedBox(height: 16),
            Text(
              'Numéro à débuter',
              style: TextStyle(color: Colors.grey),
            ),
            Text(
              '05 76 10 16 94',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '100.000 F CFA',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(width: 16),
                Icon(Iconsax.arrow_swap_horizontal, color: Colors.green),
                SizedBox(width: 16),
                Text(
                  '165,71 USDC',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ],
            ),
            SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Frais opérateur',
                  style: TextStyle(color: Colors.grey),
                ),
                Text(
                  '10 F CFA',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Montant à recevoir',
                  style: TextStyle(color: Colors.green),
                ),
                Text(
                  '100.000 F CFA',
                  style: TextStyle(color: Colors.green),
                ),
              ],
            ),
            Spacer(),
            ElevatedButton(
              onPressed: () {
                // Handle continue button press
                
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TransactionSuccessScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green, // Background color
                minimumSize: Size(double.infinity, 50), // Full width button
              ),
              child: Text(
                'Continuer',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

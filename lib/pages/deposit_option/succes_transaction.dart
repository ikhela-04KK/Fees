// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:fees/pages/home_page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';


class TransactionSuccessScreen extends StatelessWidget {
  final double amount;
  const TransactionSuccessScreen({super.key, required this.amount});

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: Container(
          width: 400,
          height: 400,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Container(
                width: 200,
                height: 150,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Color(0xFF9FE625), width: 4),
                ),
                child: Icon(
                  Iconsax.send_2,
                  size: 100,
                  color: Color(0xFF9FE625),
                ),
              ),
                SizedBox(height: 25),
                Text(
                  'Transaction Réussie',
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Iconsax.wallet_check_copy,
                        size: 40,
                        color: Colors.white,
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Dépôt à:',
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              'Synelia',
                              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        '+ ${amount.toStringAsFixed(2)} USDC',
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                ElevatedButton(
                  onPressed: () {
                    // Handle close button press
                    Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF9FE625), // Background color
                    minimumSize: Size(double.infinity, 50), // Full width button
                  ),
                  child: Text(
                    'Fermer',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

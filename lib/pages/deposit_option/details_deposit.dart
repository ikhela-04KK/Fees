import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
        title: Text('Wave'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('assets/images/wave.png'), // Path to your Wave icon
            ),
            SizedBox(height: 16),
            Text(
              'Numéro à débuter',
              style: TextStyle(color: Colors.grey),
            ),
            Text(
              '05 76 10 16 94',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '100.000 F CFA',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                ),
                SizedBox(width: 16),
                Icon(Icons.swap_horiz, color: Colors.grey),
                SizedBox(width: 16),
                Text(
                  '165,71 USDC',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
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

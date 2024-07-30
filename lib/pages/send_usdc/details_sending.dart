import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Résumé'),
      ),
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Icon(
                Icons.send,
                size: 64,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20),
            Text(
              '25,99 UDSC',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
            SizedBox(height: 5),
            Text(
              '15,594.00 XOF',
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
                    style: TextStyle(color: Colors.green, fontSize: 16),
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
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
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

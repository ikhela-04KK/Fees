// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';



class ScreenTest extends StatelessWidget {
  const ScreenTest({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TotalBalance(),
                SizedBox(height: 20),
                CryptoCards(),
                SizedBox(height: 20),
                TransferReceiveButtons(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TotalBalance extends StatelessWidget {
  const TotalBalance({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Total balance',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 16,
          ),
        ),
        Text(
          '\$280,680',
          style: TextStyle(
            color: Colors.black,
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

class CryptoCards extends StatelessWidget {
  const CryptoCards({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CryptoCard(
          color: Colors.black,
          percentage: '-18%',
          cryptoName: 'Bitcoin',
          cryptoAmount: '3.689087',
          value: '\$98,160',
          icon: Icons.currency_bitcoin,
          iconColor: Colors.white,
        ),
        SizedBox(width: 20),
        CryptoCard(
          color: Color(0xFF9FE625),
          percentage: '+26%',
          cryptoName: 'Ethereum',
          cryptoAmount: '96.480957',
          value: '\$180,480',
          icon: Icons.currency_bitcoin, // Replace with Ethereum icon
          iconColor: Colors.white,
        ),
      ],
    );
  }
}

class CryptoCard extends StatelessWidget {
  final Color color;
  final String percentage;
  final String cryptoName;
  final String cryptoAmount;
  final String value;
  final IconData icon;
  final Color iconColor;

  CryptoCard({
    required this.color,
    required this.percentage,
    required this.cryptoName,
    required this.cryptoAmount,
    required this.value,
    required this.icon,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(24),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  cryptoName,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  cryptoAmount,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  value,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 10,
          right: 10,
          child: Icon(
            icon,
            color: iconColor,
          ),
        ),
        Positioned(
          top: 10,
          left: 10,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(12),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            child: Text(
              percentage,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class TransferReceiveButtons extends StatelessWidget {
  const TransferReceiveButtons({super.key}); 
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ActionButton(
          text: 'Transfer',
          icon: Icons.arrow_upward,
          color: Colors.red,
        ),
        ActionButton(
          text: 'Receive',
          icon: Icons.arrow_downward,
          color: Color(0xFF9FE625),
        ),
      ],
    );
  }
}

class ActionButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color color;

  const ActionButton({
    super.key,
    required this.text,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {},
      icon: Icon(icon, color: Colors.white),
      label: Text(text, style: TextStyle(color: Colors.white)),
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      ),
    );
  }
}

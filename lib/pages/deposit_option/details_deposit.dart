// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, use_key_in_widget_constructors

import 'package:fees/pages/deposit_option/succes_transaction.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';



class DepositDetailsScreen extends StatefulWidget {
  @override
  State<DepositDetailsScreen> createState() => _DepositDetailsScreenState();
}

class _DepositDetailsScreenState extends State<DepositDetailsScreen> {
  TextEditingController _cfaController = TextEditingController();
  TextEditingController _usdcController = TextEditingController();

  static const double conversionRate = 600.0;
  double _operatorFee = 0.0;
  double _amountToReceive = 0.0;

  void _convertCfaToUsdc(String value) {
    double cfaAmount = double.tryParse(value) ?? 0;
    

      setState(() {
      _operatorFee = cfaAmount * 0.01;
      _amountToReceive = cfaAmount - _operatorFee;
      double usdcAmount = _amountToReceive / conversionRate;
    _usdcController.text = usdcAmount.toStringAsFixed(2);
      _usdcController.text = usdcAmount.toStringAsFixed(2);
    });
  }

  @override
  void dispose() {
    _cfaController.dispose();
    _usdcController.dispose();
    super.dispose();
  }
   void _handleDeposit() {
    double amount = double.tryParse(_usdcController.text) ?? 0.0;
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => TransactionSuccessScreen(amount: amount),
      ),
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 9, 9, 9),
        foregroundColor: Colors.white,
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
            Container(
              width: 120,
              child: TextField(
                controller: _cfaController,
                keyboardType: TextInputType.number,
                cursorColor: Colors.white,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: 'F CFA',
                  hintStyle: TextStyle(color: Colors.white54),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white54),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
                onChanged: _convertCfaToUsdc,
              ),
            ),
            SizedBox(width: 16),
            Icon(Iconsax.arrow_swap_horizontal, color: Color(0xFF9FE625)),
            SizedBox(width: 16),
            Container(
              width: 120,
              child: TextField(
                controller: _usdcController,
                readOnly: true,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: 'USDC',
                  hintStyle: TextStyle(color: Colors.white54),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white54),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
              ),
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
                  '${_operatorFee.toStringAsFixed(2)} F CFA',
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
                  style: TextStyle(color: Color(0xFF9FE625)),
                ),
                Text(
                  '${_amountToReceive.toStringAsFixed(2)} F CFA',
                  style: TextStyle(color: Color(0xFF9FE625)),
                ),
              ],
            ),
            Spacer(),
            ElevatedButton(
              onPressed: () {
                // Handle continue button press
                double amount = double.tryParse(_usdcController.text) ?? 0.0;
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TransactionSuccessScreen(amount: amount)),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF9FE625), // Background color
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

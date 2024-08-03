// ignore_for_file: prefer_const_constructors

import 'package:fees/pages/send_usdc/details_sending.dart';
import 'package:fees/pages/send_usdc/send_token.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 9, 9, 9),
        foregroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Sélectionnez le destinataire', 
          style: TextStyle(
            color: Colors.white
          ),
          
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              style: TextStyle(color: Colors.white),
              cursorColor: Colors.white,
              decoration: InputDecoration(
                hintText: 'Rechercher',
                hintStyle: TextStyle(color: Colors.grey[800]),
                prefixIcon: Icon(
                  Iconsax.search_normal_1_copy,
                  color: Colors.white,
                ),
                  suffixIcon: IconButton(
                  icon: Icon(Iconsax.scan_barcode),
                  color: Color(0xFF9FE625),
                  onPressed: () {
                    // Add your scanner icon action here
      },
    ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Color(0xFF121212),
              ),
            ),
            SizedBox(height: 20.0),
            Expanded(
              child: ListView(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SendFundsScreen()
                        ),
                      );
                    },
                    child: AddressItem(title: 'Overstock', distance: '6.61m'),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: AddressItem(title: 'NewEgg', distance: '6.61m'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AddressItem extends StatelessWidget {
  final String title;
  final String distance;

  AddressItem({required this.title, required this.distance});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
      child: Row(
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
                title,
                style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
              Text(
                'F9fa...$distance',
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.grey[400],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

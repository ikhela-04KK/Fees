
// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api

import 'package:fees/pages/home_page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:fees/services/local_auth_service.dart';

class AuthentificationScreen extends StatefulWidget {
  const AuthentificationScreen({super.key});

  @override
  _AuthentificationScreenState createState() => _AuthentificationScreenState();
}

class _AuthentificationScreenState extends State<AuthentificationScreen> {
  String otp = '';
  int? _selectedIndex;
  bool authenticate = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Entrer un code de 4 chiffres',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(4, (index) {
                return Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Container(
                    width: 50,
                    height: 50,
                    // decoration: BoxDecoration(
                    //   color: otp.length > index ? Color(0xFF9FE625) : Colors.white,
                    //   shape: BoxShape.circle,
                    // ),
                    child: Center(
                      child:Icon(Iconsax.happyemoji, color:otp.length > index ? Color(0xFF9FE625) : Colors.white) ,
                    ),
                  ),
                );
              }),
            ),
            SizedBox(height: 20),
            GridView.count(
              shrinkWrap: true,
              crossAxisCount: 3,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              padding: EdgeInsets.all(50),
              children: List.generate(12, (index) {
                if (index == 9) {
                  return GestureDetector(
                    onTap: () async {
                      // Handle the camera icon tap
                    final auth = await LocalAuth.authenticate();
                  setState(() {
                    authenticate = auth;
                  });
                  // change animation
                  if (authenticate) {
                    debugPrint("SUCEFFULY ");
                  }
                    },
                    // child: Container(
                    //   // decoration: BoxDecoration(
                    //   //   color: Colors.black,
                    //   //   shape: BoxShape.circle,
                    //   //   border: Border.all(color: Color(0xFF9FE625), width: 1),
                    //   // ),
                      child: Center(
                        child: Icon(Iconsax.finger_scan, color: Color(0xFF9FE625)),
                      ),
                    // ),
                  );
                } else if (index == 10) {
                  return _buildNumberButton(0, index);
                } else if (index == 11) {
                  return GestureDetector(
                    onTap: () {
                      // Handle delete action
                      if (otp.isNotEmpty) {
                        setState(() {
                          otp = otp.substring(0, otp.length - 1);
                          _selectedIndex = null;
                        });
                      }
                    },
                    child: Center(
                      child: Icon(Icons.backspace, color: Colors.white),
                    ),
                  );
                } else {
                  return _buildNumberButton(index + 1, index);
                }
              }),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNumberButton(int number, int index) {
    return GestureDetector(
      onTap: () {
        if (otp.length < 4) {
          setState(() {
            otp += number.toString();
            if(otp.length == 4){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
              );
            }
            _selectedIndex = index;
          });
        }
      },
      child: Container(
        decoration: BoxDecoration(
          color: _selectedIndex == index ? Color(0xFF9FE625) : Colors.white,
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Text(
            number.toString(),
            style: TextStyle(color: Colors.black, fontSize: 24),
          ),
        ),
      ),
    );
  }
}
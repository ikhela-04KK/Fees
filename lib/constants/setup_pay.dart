// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:crypto_font_icons/crypto_font_icons.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SetupPay extends StatelessWidget {
  const SetupPay({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 16),
        height: 250,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 31, 30, 32),
          borderRadius: BorderRadius.circular(16),
        ),
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "SOLDE",
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
                Icon(
                  Icons.keyboard_arrow_down,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 48,
                  width: 48,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color:  Color.fromARGB(255, 15, 16, 16),
                    ),
                    shape: BoxShape.circle,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                  child: const Center(
                    child: Icon(
                      CryptoFontIcons.BTC,
                      color: Color.fromARGB(255, 4, 85, 14),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                const Text(
                  "9835.73",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.white
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                const Text(
                  "BTC",
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.white
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color:  Color.fromARGB(255, 0, 0, 0),
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.arrow_drop_up,
                        color: Colors.green,
                      ),
                      Text(
                        "2.28%",
                        style: TextStyle(
                          color: Colors.green,
                          
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                const Text(
                  "DERNIERE 24H",
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 52,
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                    height: 42,
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:  [
                        SvgPicture.asset("assets/images/money-send.svg"),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          "Send", 
                          style: TextStyle(
                            color: Colors.white
                          ),
                        ),
                      ],
                    ),
                  )),
                  Expanded(
                      child: Container(
                    height: 42,
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                          SvgPicture.asset("assets/images/money-recive.svg"),                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          "Receive", 
                          style: TextStyle(
                            color: Colors.white
                          ),
                        ),
                      ],
                    ),
                  )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

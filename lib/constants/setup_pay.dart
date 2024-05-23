// ignore_for_file: prefer_const_constructors
import 'package:crypto_font_icons/crypto_font_icons.dart';

import 'package:flutter/material.dart';

class SetupPay extends StatelessWidget {
  const SetupPay({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16),
      height: 250,
      decoration: BoxDecoration(
        color: Colors.indigo[50],
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "CURRENT WALLET BALANCE",
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
                    color: Colors.black,
                  ),
                  shape: BoxShape.circle,
                  color: Colors.blue,
                ),
                child: const Center(
                  child: Icon(
                    CryptoFontIcons.ETH,
                    color: Colors.white,
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
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              const Text(
                "ETH",
                style: TextStyle(
                  fontSize: 28,
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
                  color: Colors.grey[100],
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
                "PAST 24 HOURS",
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
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.upload_outlined),
                      SizedBox(
                        width: 8,
                      ),
                      Text("Send"),
                    ],
                  ),
                )),
                Expanded(
                    child: Container(
                  height: 42,
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.download_outlined),
                      SizedBox(
                        width: 8,
                      ),
                      Text("Receive"),
                    ],
                  ),
                )),
              ],
            ),
          )
        ],
      ),
    );
  }
}

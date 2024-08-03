// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:fees/pages/deposit_option/screen.dart';
import 'package:fees/pages/send_usdc/adress_item.dart';
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
                  "wallet(0xndhfhdf...kjueu)",
                  style: TextStyle(color: Colors.white),
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
                  height: 24.0,
                  width: 24.0,
                  decoration: BoxDecoration(
                    // border: Border.all(
                    //   color: Color.fromARGB(255, 15, 16, 16),
                    // ),
                    shape: BoxShape.circle,
                    // color: Color.fromARGB(255, 0, 0, 0),
                  ),
                  child: SvgPicture.asset(
                    "assets/images/usd-coin-usdc-logo.svg",
                    width: 24.0,
                    height: 24.0,
                  ),

                  // ),
                ),
                const SizedBox(
                  width: 8,
                ),

                const Text(
                  "680 USDC",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white),
                ),
                const SizedBox(
                  width: 8,
                ),
                // const Text(
                //   "USDC",
                //   style: TextStyle(fontSize: 20, color: Colors.white),
                // ),
                SizedBox(
                  width: 8,
                ),
                SvgPicture.asset(
                  "assets/images/arrow-swap-horizontal.svg",
                  width: 10,
                  colorFilter:
                      ColorFilter.mode(Color(0xFF9FE625), BlendMode.srcIn),
                ),
                SizedBox(
                  width: 8,
                ),
                const Text(
                  "409.540,27 XOF",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 0, 0, 0),
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.arrow_drop_up,
                        color: Color(0xFF9FE625),
                      ),
                      Text(
                        "2.28%",
                        style: TextStyle(
                          color: Color(0xFF9FE625),
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
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            SizedBox(
              height: 52,
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>HomeScreen()),
                );
                      },
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
                            SvgPicture.asset("assets/images/money-send.svg"),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "Envoyer",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DepositScreen()),
                          );
                        },
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
                              SvgPicture.asset(
                                  "assets/images/money-recive.svg"),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                "Acheter",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        )),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

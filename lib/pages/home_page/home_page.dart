// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:cryto_wallet_3/constants/app_image.dart';
import 'package:cryto_wallet_3/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageIndex = 0;

  final List<Map<String, String>> _transactions = [
    {'name': 'Amazon', 'image': 'https://img.icons8.com/color/2x/amazon.png'},
    {
      'name': 'Cash from ATM',
      'image':
          'https://img.icons8.com/external-kiranshastry-lineal-color-kiranshastry/2x/external-atm-banking-and-finance-kiranshastry-lineal-color-kiranshastry.png'
    },
    {
      'name': 'Netflix',
      'image': 'https://img.icons8.com/color-glass/2x/netflix.png'
    },
    {
      'name': 'Apple Store',
      'image': 'https://img.icons8.com/color/2x/mac-os--v2.gif'
    },
    {
      'name': 'Cash from ATM',
      'image':
          'https://img.icons8.com/external-kiranshastry-lineal-color-kiranshastry/2x/external-atm-banking-and-finance-kiranshastry-lineal-color-kiranshastry.png'
    },
    {
      'name': 'Netflix',
      'image': 'https://img.icons8.com/color-glass/2x/netflix.png'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: IndexedStack(
          // index: pageIndex,
          children: [
            Column(
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 16),
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      // borderRadius: BorderRadius.circular(32),
                    ),
                    child: Column(
                      children: [
                        // padding 001
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            children: [
                              Text(
                                "Actions",
                                style: TextStyle(
                                    fontSize: 26,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              Container(
                                height: 200,
                                width: double.infinity,
                                child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: _transactions.length,
                                    itemBuilder: (context, index) {
                                      return Stack(
                                        children: [
                                          Container(
                                            alignment: Alignment.bottomCenter,
                                            margin: const EdgeInsets.all(10),
                                            padding:
                                                EdgeInsets.only(bottom: 12),
                                            height: 155,
                                            width: 135,
                                            decoration: BoxDecoration(
                                                color: Colors.amber,
                                                borderRadius:
                                                    BorderRadius.circular(30)),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  _transactions[index]["name"]!,
                                                  style: TextStyle(
                                                    color: Colors.white, 
                                                  ),
                                                ),
                                                const SizedBox(
                                                  width: 10,
                                                ),
                                                const Icon(
                                                    Icons.arrow_forward_sharp,
                                                    color: Colors.white),
                                                const SizedBox(
                                                  height: 10,
                                                )
                                              ],
                                            ),
                                          ),
                                          Positioned(
                                            right: 20,
                                            child: Image(
                                              image: AssetImage(
                                                  _transactions[index]["image"]!),
                                            ),
                                          ),
                                        ],
                                      );
                                    }),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                            child: Container(
                          decoration: const BoxDecoration(
                              color: Color(0xFF121212),
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(24),
                                topLeft: Radius.circular(24),
                              )),
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "Activités récentes",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontFamily: "jbm",
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () {},
                                    child: const Text(
                                      "Voir tout",
                                      style: TextStyle(
                                          fontFamily: "jbm",
                                          color: Color(0xFF4E4B4B)),
                                    ),
                                  )
                                ],
                              ),
                              Gap(8),
                              const Text(
                                "Audjourd'hui",
                                style: TextStyle(
                                    fontSize: 12, color: Colors.white),
                              ),
                              Gap(8),
                              Container(
                                height: 62,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    color: Color(0xFF1C1D21)),
                                padding: EdgeInsets.symmetric(horizontal: 12),
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                        backgroundImage:
                                            AssetImage(AppImages.faceAvatar)),
                                    Gap(8),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Marie-Emmanuelle",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                          ),
                                          Text(
                                            "0xndhfhdf...kjueu",
                                            style: TextStyle(
                                                color: Color(0xFF525255)),
                                          )
                                        ],
                                      ),
                                    ),
                                    Text(
                                      "-\$34.99",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                              Gap(8),
                              Container(
                                height: 62,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    color: Color(0xFF1C1D21)),
                                padding: EdgeInsets.symmetric(horizontal: 12),
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                        backgroundImage:
                                            AssetImage(AppImages.faceAvatar)),
                                    Gap(8),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Marie-Emmanuelle",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                          ),
                                          Text(
                                            "0xndhfhdf...kjueu",
                                            style: TextStyle(
                                                color: Color(0xFF525255)),
                                          )
                                        ],
                                      ),
                                    ),
                                    Text(
                                      "-\$34.99",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                              Gap(8),
                            ],
                          ),
                        ))
                      ],
                    ),
                  ),
                )
              ],
            ),
            // stack 001
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        type: BottomNavigationBarType
            .shifting, // masque le label en état inactive et affiche label en état active
        selectedItemColor: primaryColor, // jcp
        unselectedItemColor: Colors.grey, //jcp

        // code for switch for another for page
        currentIndex: pageIndex,
        onTap: (idx) {
          setState(() {
            pageIndex = idx;
          });
        },
        items: [
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.home_rounded,
            ),
            label: "Accueil",
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.qr_code_scanner,
            ),
            label: "Qr Code",
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.contacts,
            ),
            label: "Contact",
          ),
        ],
      ),
    );
  }
}

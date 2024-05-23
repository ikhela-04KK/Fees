// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_element, sized_box_for_whitespace
import 'package:cryto_wallet_3/constants/app_image.dart';
import 'package:cryto_wallet_3/constants/colors.dart';
import 'package:cryto_wallet_3/constants/historyPaiement.dart';
import 'package:cryto_wallet_3/constants/iconContainer.dart';
import 'package:cryto_wallet_3/constants/setup_pay.dart';
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
    {'name': 'ATM', 'image': AppImages.faceAvatar},
    {'name': 'Netflix', 'image': AppImages.faceAvatar},
    {'name': 'Apple Store', 'image': AppImages.faceAvatar},
    {'name': 'Netflix', 'image': AppImages.faceAvatar},
    {'name': 'Apple Store', 'image': AppImages.faceAvatar},
  ];

  // items for bottom navigation
  final List<Map<String, dynamic>> _navBarItems = [
    {'icon': Icons.home_rounded, 'label': 'Accueil'},
    {'icon': Icons.qr_code_scanner, 'label': 'Qr Code'},
    {'icon': Icons.contacts, 'label': 'Contact'}
  ];
  final List<Map<String, String>> _cardData = [
    {
      'avatarImage': AppImages.faceAvatar,
      'name': 'Marie-Emmanuelle',
      'address': '0xndhfhdf...kjueu',
      'amount': '-\$34.99',
    },
    {
      'avatarImage': AppImages.faceAvatar,
      'name': 'John Doe',
      'address': '0xabc...123',
      'amount': '-\$10.50',
    },
    {
      'avatarImage': AppImages.faceAvatar,
      'name': 'John Doe',
      'address': '0xabc...123',
      'amount': '-\$10.50',
    },
    {
      'avatarImage': AppImages.faceAvatar,
      'name': 'John Doe',
      'address': '0xabc...123',
      'amount': '-\$10.50',
    },
    {
      'avatarImage': AppImages.faceAvatar,
      'name': 'John Doe',
      'address': '0xabc...123',
      'amount': '-\$10.50',
    },
    // Ajouter d'autres données si nécessaire
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/faceAvatar.png'),
            ),
          ),
          title: Text(
            "Marc-Ephrem",
            style: TextStyle(color: Colors.white),
          ),
          titleSpacing: 0,
          actions: [
            IconContainer(icon: Icons.settings_outlined),
            Gap(8),
            IconContainer(icon: Icons.notifications_none)
          ],
        ),
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
                        color: Colors.black,
                        // borderRadius: BorderRadius.circular(32),
                      ),
                      child: Column(
                        children: [
                          // payement / receive
                          SetupPay(),
                          // padding 001
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Magasin",
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "jbm",
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 70,
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
                                              padding:EdgeInsets.only(bottom: 12),
                                              height: 50,
                                              width: 50,
                                              
                                              decoration: BoxDecoration(
                                                color: primarColor,
                                                borderRadius:BorderRadius.circular(30),
                                              ),
                                              // child: ClipRRect(
                                              //   borderRadius:
                                              //       BorderRadius.circular(30),
                                              //   child: Image.asset(
                                              //     _transactions[index]
                                              //         ["image"]!,
                                              //     fit: BoxFit.cover,
                                              //   ),
                                              // ),
                                            )
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
                                Expanded(
                                  child: SingleChildScrollView(
                                    child: Column(
                                      children: _cardData.map((data) {
                                        return Column(
                                          children: [
                                            CustomCard(
                                              avatarImage: data['avatarImage']!,
                                              name: data['name']!,
                                              address: data['address']!,
                                              amount: data['amount']!,
                                            ),
                                            Gap(8)
                                          ],
                                        );
                                      }).toList(),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ))
                        ],
                      ),
                    ),
                  )
                ],
              ),
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
          items: _navBarItems.map((item) {
            return BottomNavigationBarItem(
                icon: Icon(item['icon']), label: item['label']);
          }).toList(),
        ));
  }
}

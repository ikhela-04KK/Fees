// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_element, sized_box_for_whitespace
import 'package:fees/constants/app_image.dart';
import 'package:fees/constants/colors.dart';
import 'package:fees/constants/historyPaiement.dart';
import 'package:fees/constants/iconContainer.dart';
import 'package:fees/constants/scanner_code.dart';
// import 'package:fees/constants/setup_pay.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fees/pages/deposit_option/screen.dart';
import 'package:fees/pages/send_usdc/adress_item.dart';
import 'package:fees/pages/wallet/wallet_provider.dart'; 
import 'package:fees/services/model/create_wallet_model.dart';
class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageIndex = 0;

  // items for bottom navigation
  final List<Map<String, dynamic>> _navBarItems = [
    {'icon': Icons.home_rounded, 'label': 'Accueil'},
    {'icon': Icons.qr_code_scanner, 'label': 'Qr Code'},
    {'icon': Icons.contacts, 'label': 'Contact'}
  ];
  final List<Map<String, String>> _cardData = [
    {
      'avatarImage': AppImages.faceOne,
      'name': 'Overstock',
      'address': '0xabc...245',
      'amount': '-\$25.99',
    },
    {
      'avatarImage': AppImages.faceTwo,
      'name': 'NewEgg',
      'address': '0xabc...123',
      'amount': '-\$10.50',
    },
    {
      'avatarImage': AppImages.faceAvatar,
      'name': 'Shopify',
      'address': '0xabc...126',
      'amount': '-\$10.50',
    },
    {
      'avatarImage': AppImages.faceFour,
      'name': 'Overstock',
      'address': '0xabc...123',
      'amount': '-\$10.50',
    },
    {
      'avatarImage': AppImages.faceAvatar,
      'name': 'NewEgg',
      'address': '0xabc...123',
      'amount': '-\$10.50',
    },
    // Ajouter d'autres données si nécessaire
  ];
  @override
  Widget build(BuildContext context) {
    double usdcAmount = Provider.of<WalletProvider>(context).usdcBalance;
    double cfaAmount = Provider.of<WalletProvider>(context).xofBalance;


    // appeler les apis dans le homePage 

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/4.png'),
            ),
          ),
          title: Text(
            "Synelia",
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
                          GestureDetector(
                              onTap: () {
                                _showQRCode(context);
                              },

                              //---
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 16),
                                  height: 250,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 31, 30, 32),
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  padding: const EdgeInsets.all(16),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "wallet(0xndhfhdf...kjueu)",  // utiliser les resultats du wallet ici
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          Icon(
                                            Icons.keyboard_arrow_down,
                                          )
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
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

                                          Text(
                                            '${usdcAmount.toStringAsFixed(2)} USDC',  // utiliser l'api du get balance ici
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15,
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
                                            colorFilter: ColorFilter.mode(
                                                Color(0xFF9FE625),
                                                BlendMode.srcIn),
                                          ),
                                          SizedBox(
                                            width: 8,
                                          ),
                                          Text(
                                            '${cfaAmount.toStringAsFixed(2)} XOF',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15,
                                                color: Colors.white),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 8, vertical: 4),
                                            decoration: BoxDecoration(
                                              color:
                                                  Color.fromARGB(255, 0, 0, 0),
                                              borderRadius:
                                                  BorderRadius.circular(24),
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
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 52,
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: GestureDetector(
                                                onTap: () {
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            HomeScreen()),
                                                  );
                                                },
                                                child: Container(
                                                  height: 42,
                                                  margin: const EdgeInsets
                                                      .symmetric(
                                                      horizontal: 16),
                                                  decoration: BoxDecoration(
                                                    color: Colors.black,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                    border: Border.all(),
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      SvgPicture.asset(
                                                          "assets/images/money-send.svg"),
                                                      SizedBox(
                                                        width: 8,
                                                      ),
                                                      Text(
                                                        "Envoyer",
                                                        style: TextStyle(
                                                            color:
                                                                Colors.white),
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
                                                          builder: (context) =>
                                                              DepositScreen()),
                                                    );
                                                  },
                                                  child: Container(
                                                    height: 42,
                                                    margin: const EdgeInsets
                                                        .symmetric(
                                                        horizontal: 16),
                                                    decoration: BoxDecoration(
                                                      color: Colors.black,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8),
                                                      border: Border.all(),
                                                    ),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        SvgPicture.asset(
                                                            "assets/images/money-recive.svg"),
                                                        SizedBox(
                                                          width: 8,
                                                        ),
                                                        Text(
                                                          "Acheter",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white),
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
                              )
                              // --
                              ),
                          // padding 001
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              children: [],
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
            if (idx == 1) {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        ScannerCode()), // Remplacez `QRCodePage` par votre page de QR code
              );
            }
          },

          items: _navBarItems.map((item) {
            return BottomNavigationBarItem(
                icon: Icon(item['icon']), label: item['label']);
          }).toList(),
        ));
  }

  void _showQRCode(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
          backgroundColor: Color.fromARGB(255, 14, 13, 13),
          shadowColor: Colors.transparent,
          surfaceTintColor: Color(0xFF9FE625),
          content: Padding(
            padding: EdgeInsets.all(20),
            child: QrImageView(

                data: 'wallet(0xndhfhdf...kjueu)', // Data to be encoded
                version: QrVersions.auto,
                dataModuleStyle: QrDataModuleStyle(
                    color: Color(0xFF9FE625),
                    dataModuleShape: QrDataModuleShape.circle),
                size: 200.0,
                eyeStyle: QrEyeStyle(
                    color: Color(0xFF9FE625), eyeShape: QrEyeShape.circle),
                // backgroundColor: Color(0xFF9FE625),
                semanticsLabel: "This is a public key or wallet"),
          )),
    );
  }
}

// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_element, sized_box_for_whitespace
import 'package:fees/constants/app_image.dart';
import 'package:fees/constants/colors.dart';
import 'package:fees/constants/historyPaiement.dart';
import 'package:fees/constants/iconContainer.dart';
import 'package:fees/constants/scanner_code.dart';
import 'package:fees/constants/setup_pay.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:qr_flutter/qr_flutter.dart';

class HomePage extends StatefulWidget {
  double? cfaAmount; 
  double? usdcAmount;
  HomePage({super.key, this.cfaAmount, this.usdcAmount});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageIndex = 0;
  double? usdcAmount;
  double? cfaAmount;

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
                            onTap: (){
                              _showQRCode(context);
                            },
                            child: SetupPay(cfaAmount:cfaAmount,usdcAmount:usdcAmount),
                          ), 
                          // padding 001
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              children: [
                                  
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
            if (idx == 1){
              Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ScannerCode()), // Remplacez `QRCodePage` par votre page de QR code
      );
            }

          },
        

          
          items: _navBarItems.map((item) {
            return BottomNavigationBarItem(
                icon: Icon(item['icon']), label: item['label']);
          }).toList(),
        )
        );
  }
  void _showQRCode(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Color.fromARGB(255, 14, 13, 13),   
        shadowColor:Colors.transparent,
        surfaceTintColor: Color(0xFF9FE625),
        content: Padding(
          padding: EdgeInsets.all(20),
          child: QrImageView(
          data: 'wallet(0xndhfhdf...kjueu)',  // Data to be encoded
          version: QrVersions.auto,
          dataModuleStyle: QrDataModuleStyle(
            color: Color(0xFF9FE625), 
            dataModuleShape: QrDataModuleShape.circle
          ),
          size: 200.0,
          eyeStyle: QrEyeStyle(
            color: Color(0xFF9FE625),
            eyeShape: QrEyeShape.circle
          ),
          // backgroundColor: Color(0xFF9FE625),
          semanticsLabel: "This is a public key or wallet"
        ),
        )
      ),
    );
  }
}

// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_element, sized_box_for_whitespace
import 'package:cryto_wallet_3/constants/app_image.dart';
import 'package:cryto_wallet_3/constants/colors.dart';
import 'package:cryto_wallet_3/constants/historyPaiement.dart';
import 'package:cryto_wallet_3/constants/iconContainer.dart';
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
    {
      'name': 'ATM',
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
  ];

  // items for bottom navigation 
  final List<Map<String, dynamic>> _navBarItems = [
    {
      'icon':Icons.home_rounded, 
      'label':'Accueil'
    }, 
    {
      'icon':Icons.qr_code_scanner,
      'label':'Qr Code'
    }, 
    {
      'icon':Icons.contacts, 
      'label':'Contact'
    }
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
                        // payement
                        Positioned(
                          left: 0,
                          bottom: 0,
                          right: 0,
                          top: 0,
                          child: Column(
                            children: [
                              Container(
                                height: 150,
                                decoration: BoxDecoration(color: Colors.indigo),
                              )
                            ],
                          ),
                        ),

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
                                              color: primarColor,
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.black.withOpacity(
                                                      0.5), // couleur de l'ombre avec opacité
                                                  spreadRadius:
                                                      2, // étendre l'ombre
                                                  blurRadius:
                                                      5, // flou de l'ombre
                                                  offset: Offset(0,
                                                      3), // décalage de l'ombre
                                                ),
                                              ],
                                            ),
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
                                              image: NetworkImage(
                                                  _transactions[index]
                                                      ["image"]!),
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
                              CustomCard(avatarImage: AppImages.faceAvatar, name: "Marie-Emmanuelle", address:  '0xndhfhdf...kjueu', amount:'-\$34.99' )
                            ],
                          ),
                        )
                      )
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
        items: _navBarItems.map((item){
          return BottomNavigationBarItem(
            icon: Icon(item['icon']), 
            label: item['label']
          );
        }
      ).toList(),
      )
    );
  }
}

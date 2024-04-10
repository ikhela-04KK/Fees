// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // listes des données dynamiques et les variables à mettre ici

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 250.0,
              elevation: 0,
              pinned: true, // definis si la barre d'application de connection reste statique quant on fait défiler les éléemnt
              toolbarHeight: 80,
              backgroundColor: Colors.white,
              actions: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Iconsax.notification,
                      color: Colors.black,
                    )
                ),
                IconButton(
                  onPressed: () {},
                  icon: CircleAvatar(
                    backgroundImage: AssetImage("assets\\images\\avatar.jpg"),
                    radius: 20,
                  ),
                ),
              ],
              leading: IconButton(
                onPressed: () {},
                icon: Icon(Iconsax.menu),
              ), 
              flexibleSpace: FlexibleSpaceBar(
              
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Total Balance", 
                        style: TextStyle(
                          color: Color(0xd9d9d9d9), 
                          fontSize: 12

                        ),
                      ), 
                      Text(
                        '\$280.47', 
                        style: TextStyle(
                          color: Colors.black
                        ),
                      )
                    ],
                  ), 
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color:  Colors.grey.shade800,
                      borderRadius: BorderRadius.circular(70),
                    ),
                  )
                ],
              ),
            
            ),
          
            ), 
            
        ]
      )
    );
  }
}

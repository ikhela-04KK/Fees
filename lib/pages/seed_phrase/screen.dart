// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class SeedPhrase extends StatelessWidget {
  const SeedPhrase({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Créer un portefeuille",
          style: TextStyle(
              fontFamily: "jbm", fontSize: 14, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              "Phrase secrète",
              style: TextStyle(
                  fontFamily: "jbm", fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 35,
            ),
            Text(
              "Enregister votre phrase sécrète dans un lieu sûr ",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color.fromARGB(255, 200, 176, 176),
                  fontFamily: "jbm",
                  fontSize: 10,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 35,
            ),

            // add gridViewBuilder 
            Container(
              height: 450,
              child: GridView.builder(
                itemCount: 12,
                itemBuilder: (context , index) => ItemTile(index),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, 
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                  childAspectRatio: 2.5
                ),
                physics: NeverScrollableScrollPhysics(),
              ),
            ),

            SizedBox(
              height: 35,
            ),
            TextButton.icon(
                onPressed: () {},
                style: TextButton.styleFrom(
                  foregroundColor: Color(0xFF9FE625),
                  textStyle: TextStyle(
                    fontSize: 14,
                    fontFamily: "jbm",
                    
                  ),
                ),
                label: Text(
                  "Copier dans le presse-papier", 
                  style: TextStyle(
                    color: Color(0xFF9FE625)
                  ),
                ),
                icon: Icon(
                  Icons.copy_all, 
                  size: 20.0,
                  color: Color(0xFF053B06),
                ),
            ),
          ],
        ),
      ),
    );
  }
}

class ItemTile extends StatelessWidget {
  final int itemNo;

  const ItemTile(this.itemNo, {super.key});

  @override
  Widget build(BuildContext context) {
    // final Color color = Colors.primaries[itemNo % Colors.primaries.length];
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 85, 86, 90).withOpacity(0.3),
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '${itemNo+1 <10 ? '0' : ''}${itemNo+1}.',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xFF454649),
              ),
            ),
            Container(
              width: 1,
              height: 30, // Adjust the height as needed
              color:  Color(0xFF55565A).withOpacity(0.3).withOpacity(0.7),
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
            ),
            Text(
              'Product ${itemNo+1}',
              key: Key('text_$itemNo'),
              style: TextStyle(
                color: Colors.white,
            ),
            )
          ],
        ),
      ),
    );
  }
}
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cryto_wallet_3/pages/seed_phrase/button/copy_check_swap.dart';
import 'package:flutter/material.dart';

class SeedPhrase extends StatelessWidget {
  const SeedPhrase({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        
        appBar: AppBar(
          leading: Icon(Icons.arrow_back),
          centerTitle: true,
          foregroundColor: Colors.white,
          backgroundColor: Colors.black,
          title: Text(
            "Créer Portefeuille",
            style: TextStyle(
                fontFamily: "jbm", fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 30,),
              Text(
                "Phrase Secrète",
                style: TextStyle(
                    fontFamily: "jbm", 
                    fontSize: 24, 
                    fontWeight: FontWeight.bold, 
                    color: Colors.white
                    ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Enregister votre phrase sécrète , \n Il servira à récupérer votre wallet en cas de perte",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromARGB(255, 160, 154, 154),
                    fontFamily: "jbm",
                    fontSize: 12,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
      
              // add gridViewBuilder 
              Container(
                height: 420,
                child: GridView.builder(
                  itemCount: 12,
                  itemBuilder: (context , index) => ItemTile(index),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, 
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 10.0,
                    childAspectRatio: 3.5
                  ),
                  physics: NeverScrollableScrollPhysics(),
                ),
              ),
              
              IconChangeButton(),
              ElevatedButton
                    (
                    onPressed: (){}, 
            
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF9FE625),
                      foregroundColor: Color.fromARGB(255, 4, 4, 4),
                      padding: EdgeInsets.symmetric(horizontal: 125, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)
                      ),
                      textStyle: TextStyle(
                        fontSize: 14,
                        fontFamily: "jbm",
                        fontWeight: FontWeight.bold
                      )
                    ),
                    child: Text(
                      "Suivant",
                    )
                    )
            ],
          ),
        ),
      ),
    );
  }
}


//  for seed Phrase
class ItemTile extends StatelessWidget {
  final int itemNo;

  const ItemTile(this.itemNo, {super.key});

  @override
  Widget build(BuildContext context) {
    // final Color color = Colors.primaries[itemNo % Colors.primaries.length];
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 30, 30, 31).withOpacity(0.7),
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


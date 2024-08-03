// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:fees/pages/home_page/home_page.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Color(0xFF9FE625), width: 4),
                ),
                child: Icon(
                  Iconsax.send_2,
                  size: 100,
                  color: Color(0xFF9FE625),
                ),
              ),
            ),
            SizedBox(height: 30),
            Text(
              'Transaction Réussie',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            SizedBox(height: 30),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Icon(
                    Iconsax.wallet,
                    color: Colors.white,
                    size: 40,
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Envoyé À:',
                        style: TextStyle(color: Colors.white70, fontSize: 16),
                      ),
                      Text(
                        'Overstock',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ],
                  ),
                  Spacer(),
                  Text(
                    '-25.99',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF9FE625),
                padding: EdgeInsets.symmetric(vertical: 16),
              ),
              child: Text(
                'Fermer',
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// - l'animation du début ne se lance pas
// - Mettre aussi les contacts à zero , genre en mode zéro contact 
////- changer product en des phrases de recuperation
// - pour la section de l'inscription regarder les autres processus d'inscription et mettre le logo de Fees 
// - arranger confirmer mot de passe de tel sorte à ce qu'il soit sur une seul ligne 
// - lorsqu'on clique sur s'incrire il doit y avoir un loading 
// //- pour la partie scan faire de telle sorte que l'on puisse entrer un code de 4 chiffres ou s'authentifier et lorsqu'on clique fini de rentrer le code à 4 chiffres 
// - un screen de transaction pour dire que le wallet sera créer dans 5 seconde , un loading et passer à la création du wallet 
// - Mettre 0Fr comme compte principal 
// //- et lorsque je clique sur Acheter et faire un dépôt , je puisse choisir MTN car maintenant ça ne passe oas 
// //- selection destinataire mettre le fond blanc en noire 
// //mettre le scanner dans la barre de rechercher 
// le boutton retour doit marcher 
// changer l'icone de overstock dans Envoyer et faire les modifications du appBar en noir faire marcher le boutton de retour 
// //faire fonctionner la barre entrer les prix 
// lorsqu'on qu'il sur envoyer un loading pour rendre à ça plus réaliste 
// //le boutton Fermer doit pouvoir fonctionner et retourner à la page accueil
//  //adapter la couleur en fonction de la couleur verte du layout sucesssTransaction 
// changer l'îcone de Overstock et NewEgg en leur logo respective 

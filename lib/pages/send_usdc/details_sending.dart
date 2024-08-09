// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:fees/components/animation/loading_provider.dart';
import 'package:fees/pages/send_usdc/sucess_sending.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:provider/provider.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class DetailsSendingScreen extends StatefulWidget {
  final double token;
  final double usdcConvert;
  const DetailsSendingScreen({super.key, required this.token, required this.usdcConvert});

  @override
  State<DetailsSendingScreen> createState() => _DetailsSendingScreenState();
}

class _DetailsSendingScreenState extends State<DetailsSendingScreen> {
  @override
  Widget build(BuildContext context) {

    // ligne de code pour accepter les providers 
     final loadingProvider = Provider.of<LoadingProvider>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Résumé',
          style: TextStyle(
            color: Colors.white
          ),
        
        ),
      ),
      backgroundColor: Colors.black,
      body:loadingProvider.isLoading
      ? Center(
              child: SpinKitFadingCircle(
                itemBuilder: (BuildContext context, int index) {
                  return DecoratedBox(
                    decoration: BoxDecoration(
                      color: index.isEven ? Colors.red : Colors.green,
                    ),
                  );
                },
              ), // Utilisation de l'animation SpinKitFadingCircle
            )
      : Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children:<Widget>[
            Container(
              child: Center(
                child: Icon(
                  Iconsax.send_2,
                  size: 150,
                  color: Color(0xFF9FE625),
                ),
              ),
            ),
            SizedBox(height:20),
            Text(
              '${widget.token.toStringAsFixed(2)} USDC',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
            SizedBox(height: 5),
            Icon(Iconsax.arrow_swap,color: Color(0xFF9FE625)),
            SizedBox(height: 5),
            Text(
              '${widget.usdcConvert.toStringAsFixed(2)} F CFA',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            SizedBox(height: 30),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'À',
                    style: TextStyle(color: Colors.white70),
                  ),
                  Text(
                    'Overstock (0xabc...245)',
                    style: TextStyle(color: Color(0xFF9FE625), fontSize: 16),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Réseau',
                    style: TextStyle(color: Colors.white70),
                  ),
                  Text(
                    'Solana Devnet',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Frais du réseau',
                    style: TextStyle(color: Colors.white70),
                  ),
                  Text(
                    '\$0.0008',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Frais du réseau en FCFA',
                    style: TextStyle(color: Colors.white70),
                  ),
                  Text(
                    '0.48 XOF',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                loadingProvider.startLoading();
                await _loadHomePageData();
                if (mounted){
                  loadingProvider.stopLoading();
                  _navigateToSuccessPage(); 
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF9FE625),
                padding: EdgeInsets.symmetric(vertical: 16),
              ),
              child: Text(
                'Envoyer',
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _loadHomePageData() async {
    // Simuler le chargement des données pour la page d'accueil
    await Future.delayed(Duration(seconds: 3));
  }
  void _navigateToSuccessPage() {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => SuccessPage()),
  );
}

}

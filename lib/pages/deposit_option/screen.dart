import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Faire un dépôt',
      theme: ThemeData.dark(),
      home: DepositScreen(),
    );
  }
}

class DepositScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Handle back button press
          },
        ),
        title: Text(
          'Faire un dépôt', 
        ),
        centerTitle: true,
      ),
      
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50),
        child: ListView(
          children: [
            DepositOption(
              iconPath: 'assets/images/wave.png', // Add the path to your Wave icon
              name: 'Wave',
              fee: '1% - Frais Opérateur',
            ),
            DepositOption(
              iconPath: 'assets/images/mtn_momo.jpg', // Add the path to your MTN MoMo icon
              name: 'MTN MoMo',
              fee: '1% - Frais Opérateur',
            ),
            DepositOption(
              iconPath: 'assets/images/orange_money.png', // Add the path to your Orange Money icon
              name: 'Orange Monney',
              fee: '1% - Frais Opérateur',
            ),
          ],
        ),
      ),
    );
  }
}

class DepositOption extends StatelessWidget {
  final String iconPath;
  final String name;
  final String fee;

  DepositOption({
    required this.iconPath,
    required this.name,
    required this.fee,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color.fromARGB(255, 42, 40, 40),
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: ListTile(
        leading: Image.asset(iconPath, width: 40, height: 40),
        title: Text(name, style: TextStyle(color: Colors.white)),
        subtitle: Text(fee, style: TextStyle(color: Colors.grey)),
        onTap: () {
          // Handle tap
        },
      ),
    );
  }
}

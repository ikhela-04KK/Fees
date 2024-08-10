import 'package:flutter/material.dart';

class WalletProvider with ChangeNotifier {
  double _usdcBalance = 0.0;
  double _xofBalance = 0.0;

  double get usdcBalance => _usdcBalance;
  double get xofBalance => _xofBalance;

  // Fonction pour déposer des USDC
  void depositUSDC(double amount) {
    _usdcBalance += amount;
    _xofBalance = _usdcBalance*600;
    notifyListeners();
  }

  // Fonction pour acheter des USDC (convertir XOF en USDC)
  void purchaseUSDC(double xofAmount, double conversionRate) {
    if (_xofBalance >= xofAmount) {
      double usdcAmount = xofAmount / conversionRate;
      _xofBalance -= xofAmount;
      _usdcBalance -= usdcAmount;
      notifyListeners();
    } else {
      // Gestion des erreurs (par exemple, solde insuffisant)
      print("Solde insuffisant pour effectuer l'achat");
    }
  }

  // Fonction pour ajouter du XOF (par exemple, après une conversion)
  void addXOF(double amount) {
    _xofBalance += amount;
    notifyListeners();
  }
}

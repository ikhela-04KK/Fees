import 'package:fees/services/networking/api_request.dart';
import 'package:flutter/foundation.dart';
import 'package:fees/services/model/create_wallet_model.dart';
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
      debugPrint("Solde insuffisant pour effectuer l'achat");
    }
  }

  // Fonction pour ajouter du XOF (par exemple, après une conversion)
  void addXOF(double amount) {
    _xofBalance += amount;
    notifyListeners();
  }
}

class CreateWalletProvider with ChangeNotifier {
  
  CreateWallet? _createWalleModel;  // Nullable
  
  late String _name;
  late String _refId;

  String get name => _name;
  String get refId => _refId;

  CreateWallet? get createWalletModel => _createWalleModel;  // Nullable getter

  createWallet({
    required String name,
    required String refId,
  }) async {
    try {
      _createWalleModel = await APIManagement().createWalletRequest(name: name, refId: refId);
      notifyListeners();
    } catch (e) {
      if (kDebugMode) {
        print('Erreur lors du fetch à api');
      }
    } finally {
      debugPrint("Finally setup");
    }
    return _createWalleModel;
  }
}




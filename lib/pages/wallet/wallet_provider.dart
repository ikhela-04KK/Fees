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
  late CreateWallet _createWalleModel; 

  // bool _isLoading = false;
  // bool get isLoding => _isLoading; 

  late String _name;

  String get name => _name;

  late String _refId;

  String get refId => _refId;

  CreateWallet get createWalletModel => _createWalleModel;

  // setLoading(bool value){
  //   _isLoading = value;
  //   notifyListeners(); 
  // }

  createWallet({
    required String name,
    required String refId,
  }) async {
    // setLoading(true); 
    try {
      _createWalleModel = await APIManagement().createWalletRequest(name: name, refId: refId);
      notifyListeners(); 
      // setLoading(false); 

    } catch( e){
      if (kDebugMode){

        print('Erreur lors du fetch à api'); 
      }        
      }
      finally { 
        // setLoading(false);  
        debugPrint("Finally setup");
      }
      return _createWalleModel;
    }
  }


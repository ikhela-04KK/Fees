import 'dart:convert';
import 'dart:io';

import 'package:fees/constants/app_image.dart';
import 'package:fees/services/model/create_wallet_model.dart';
import 'package:fees/services/networking/generate_key.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/foundation.dart';
import 'package:uuid/v4.dart';

// CreateWallet createWalletFromJson(String str) => CreateWallet.fromJson(json.decode(str));
class APIManagement {
  Future<CreateWallet> createWalletRequest({
    required String name,
    required String refId,
  }) async {
    late CreateWallet createWalletModel;
    final key = await generateKey();

    // charger les variables d'environnement
    await dotenv.load(fileName: "../../../assets/.env");

    // gestion du uuid
    const uuidV4 = UuidV4();
    final walletSetId = dotenv.env['wallet_set_id'] ?? Platform.environment['circle_key'];
    final circleKey = dotenv.env['circle_key'] ?? Platform.environment['circle_key'];

    // pour eviter cette erreur Map<String, String?> or il doit prendre uniquement Map<String , String>
    // pour s'assurer que peut importe l'élément qui sort de cette exception ça soit toujours valide 
    if (circleKey == null || walletSetId == null) {
      throw Exception("api key have null value");
    }

    try {
      final Map<String, String> headers = {
        'Content-Type': 'application/json',
        'Authorization': circleKey
      };
      var request = http.Request('POST',
          Uri.parse("${ApiRequestConstants.baseUrl}/developer/wallets"));
      request.body = json.encode({
        "blockchains": ["SOL-DEVNET"],
        "metadata": [
          {"name": name, "refId": refId}
        ],
        "count": 1,
        "entitySecretCiphertext": key,
        "idempotencyKey": uuidV4,
        "walletSetId": walletSetId
      });
      request.headers.addAll(headers);
      http.StreamedResponse response = await request.send();
      if (response.statusCode == 200) {
        var data = await response.stream.bytesToString();
        createWalletModel = createWalletListFromJson(data);
      } else {
        if (kDebugMode) {
          print(response.reasonPhrase);
        }
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
    return createWalletModel;
  }
}
// ApiRequestConstants

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';
// import 'package:fees/constants/app_image.dart';
// import 'package:dotenv/dotenv.dart';
import 'package:fees/constants/app_image.dart';

import 'dart:typed_data';
import 'package:encrypt/encrypt.dart';
import 'package:pointycastle/asymmetric/api.dart';
import 'package:convert/convert.dart';
import 'dart:io';

// class ApiRequestConstants {
//   static const baseUrl = 'https://api.circle.com/v1/w3s/';
// }
Future<String> generateKey() async {
  // pour récupérer les données du .env 
// final env = DotEnv(includePlatformEnvironment: true)..load();
  await dotenv.load(fileName: "assets/.env");
  final entitySecret =Platform.environment['entity_secret'] ?? dotenv.env['entity_secret'];
  final circleKey = Platform.environment['CIRCLE_KEY'] ?? dotenv.env['circle_key'];

  // vérifier si entity_scret et circlekey ne sont pas null 
  if (circleKey == null || entitySecret == null){ 
    throw  Exception("circle key et entity_scret ont des valeurs nulles");
  }

  // Effectuer une requête GET pour obtenir la clé publique
  // final url = 'https://api.circle.com/v1/w3s/config/entity/publicKey';
  final headers = {
    'Content-Type': 'application/json',
    'Authorization': 'Bearer $circleKey',
  };

  final response = await http.get(Uri.parse("${ApiRequestConstants.baseUrl}config/entity/publicKey"), headers: headers);
  if (response.statusCode != 200) {
    throw Exception('Failed to load public key');
  }

  final Map<String, dynamic> pkey = json.decode(response.body);

  // Convertir l'ENTITY_SECRET en bytes
  final entitySecretBytes = hexToBytes(entitySecret);

  // Convertir la clé publique PEM en objet PublicKey
  final publicKeyPem = pkey['data']['publicKey'];
    final publicKey = RSAKeyParser().parse(publicKeyPem) as RSAPublicKey;
   // Set up the encrypter
  final encrypter = Encrypter(RSA(publicKey: publicKey,encoding: RSAEncoding.OAEP,digest: RSADigest.SHA256,),);

  // Encrypt the data
  final encryptedData = encrypter.encryptBytes(entitySecretBytes);

  // Convert encrypted data to base64
  final encryptedBase64 = encryptedData.base64;

  // Print the encrypted data in base64 format
  return encryptedBase64;
}

// New helper function to convert hex string to bytes
Uint8List hexToBytes(String hexStr) {
  final bytes = hex.decode(strip0x(hexStr));
  if (bytes is Uint8List) return bytes;

  return Uint8List.fromList(bytes);
}

String strip0x(String hex) {
  if (hex.startsWith('0x')) return hex.substring(2);
  return hex;
}
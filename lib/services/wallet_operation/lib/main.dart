import 'package:wallet_operation/generate_key.dart';

void main() async {
  var gen = await generateKey();
  print(gen);
}
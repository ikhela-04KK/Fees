// lib/helpers/solana_helper.dart
import 'package:solana_web3/solana_web3.dart';

class SolanaHelper {
  final String solAdress;
  final double balance;
  final double exchangeRate;
  final Connection connection;

  SolanaHelper({
    required this.solAdress,
    required this.balance,
    required this.exchangeRate,
    required this.connection,
  });

  double get balanceDiv => balance / lamportsPerSol;

  double calculateEquivalentUSDT(double solAmount) {
    return solAmount * exchangeRate;
  }

  Future<double?> getTestnetBalance() async {
    final blockhash = await connection.getLatestBlockhash();
    final publicKey = Pubkey.fromString(solAdress);
    final balance = await connection.getBalance(publicKey);
    return balance.toDouble() / lamportsPerSol;
  }

}
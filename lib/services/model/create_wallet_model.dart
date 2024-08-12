import 'dart:convert'; 


CreateWallet createWalletListFromJson(String str) => CreateWallet.fromJson(json.decode(str));

class CreateWallet{
  CreateWallet({
    required this.status,
    required this.message, 
    required this.data, 
  }); 
  String status; 
  String message;
  Data data; 

  factory CreateWallet.fromJson(Map<String, dynamic> json) => CreateWallet(
    status: json["status"], 
    message: json["message"], 
    data: json["data"]
  ); 
}
  class Data{
    Data({
      required this.id,
      required this.state,
      required this.walletSetId,
      required this.custodyType,
      required this.refId,
      required this.name,
      required this.address,
      required this.blockchain,
      required this.accountType,
      required this.updateDate,
      required this.createDate,
    });
      String id;
      String state;
      String walletSetId;
      String custodyType;
      String refId;
      String name;
      String address;
      String blockchain;
      String accountType;
      DateTime updateDate;
      DateTime createDate;
  
    factory Data.fromJson(Map<String, dynamic> json) => Data(
    id: json["id"],
    state: json["state"],
    walletSetId: json["walletSetId"],
    custodyType: json["custodyType"],
    refId: json["refId"],
    name: json["name"],
    address: json["address"],
    blockchain: json["blockchain"],
    accountType: json["accountType"],
    updateDate: DateTime.parse(json["updateDate"]),
    createDate: DateTime.parse(json["createDate"]),
  );
}
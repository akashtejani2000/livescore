part of 'model.dart';

class Bank {
  int id;
  String name;
  String accountNo;
  String accountName;
  String branchName;
  int accountType;

  Bank({
    required this.id,
    required this.name,
    required this.accountName,
    required this.accountNo,
    required this.branchName,
    required this.accountType,
  });
}

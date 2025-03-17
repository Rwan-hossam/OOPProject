import 'bankAccount.dart';

class Bank {
  List<BankAccount> accounts = [];

  void createAccount(String accountNumber, String holderName, double balance) {
    if (accounts.any((account) => account.accountNumber == accountNumber)) {
      print('Failed process: $accountNumber already exists.');
    } else {
      BankAccount newAccount =
          BankAccount("accountNumber", holderName, balance);
      accounts.add(newAccount);
      print('Account created successfully.');
    }
  }

  void display() {
    for (var element in accounts) {
      print('Account Number:${element.accountNumber}');
      print('Holder Name is:${element.holderName}');
      print('Balance:${element.getBalance()}');
      print('Transactions of this account are:${element.transactions}');
    }
  }
}

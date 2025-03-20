import 'BankAccount.dart';
import 'dart:io';
import 'Bank.dart';
import 'CurrentAccount.dart';
import 'savingAccount.dart';

void main(List<String> arguments) {
  Bank bank = Bank();

  print('''
Welcome to the Bank Management System
1 - Create an Account
2 - Deposit Money
3 - Withdraw Money
4 - Check Balance
5 - View Transactions
6 - Exit
''');
  int choice = int.parse(stdin.readLineSync()!);
  switch (choice) {
    case 1:
      print("Enter Account Type: 1 - Savings, 2 - Current, 3 - Normal");
      int type = int.parse(stdin.readLineSync()!);
      print("Enter Account Number:");
      String accountNumber = stdin.readLineSync()!;
      print("Enter Holder Name:");
      String holderName = stdin.readLineSync()!;
      print("Enter Initial Balance:");
      double balance = double.parse(stdin.readLineSync()!);
      BankAccount acc1;
      if (type == 1) {
        acc1 = SavingAccount(accountNumber, holderName, balance);
      } else if (type == 2) {
        acc1 = Currentaccount(accountNumber, holderName, balance);
      } else {
        acc1 = BankAccount(accountNumber, holderName, balance);
      }
      bank.createAccount(
          acc1.accountNumber, acc1.holderName, acc1.getBalance());
      bank.accounts.add(acc1);

      break;
    case 2:
      print("Enter Account Number:");
      String accNum = stdin.readLineSync()!;
      var account = bank.accounts.firstWhere(
        (acc) => acc.accountNumber == accNum,
        orElse: () => throw Exception("Account not found"),
      );
      print("Enter Amount:");
      double amount = double.parse(stdin.readLineSync()!);
      account.DepositMoney(amount);
      break;
    case 3:
      print("Enter Account Number:");
      String accNum = stdin.readLineSync()!;
      var account = bank.accounts.firstWhere(
        (acc) => acc.accountNumber == accNum,
        orElse: () => throw Exception("Account not found"),
      );
      print("Enter Amount:");
      double amount = double.parse(stdin.readLineSync()!);
      account.withdrawMoney(amount);
      break;
    case 4:
      print("Enter Account Number:");
      String accNum = stdin.readLineSync()!;
      var account = bank.accounts.firstWhere(
        (acc) => acc.accountNumber == accNum,
        orElse: () => throw Exception("Account not found"),
      );
      print(account.getBalance());
      break;

    case 5:
      print("Enter Account Number:");
      String accNum = stdin.readLineSync()!;
      var account = bank.accounts.firstWhere(
        (acc) => acc.accountNumber == accNum,
        orElse: () => throw Exception("Account not found"),
      );
      print(account.transactions);
      break;

    case 6:
      print("Have a great day");
      return;

    default:
      print("Invalid choice.Please Try again.");
  }
}

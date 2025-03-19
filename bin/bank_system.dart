import 'BankAccount.dart';
import 'dart:io';

import 'CurrentAccount.dart';
import 'savingAccount.dart';

void main(List<String> arguments) {
  Set<BankAccount> accounts = {
    BankAccount("3", "Ali", 5000),
    BankAccount("2", "Sara", 1200),
    BankAccount("1", "Mona", 700052),
  };
  Set<SavingAccount> savingAccounts = {
    SavingAccount("5", "mohammed", 4585),
    SavingAccount("7", "farida", 12750),
    SavingAccount("9", "Mazen", 705522),
  };
  Set<Currentaccount> currentAccounts = {
    Currentaccount("10", "mariem", 4585),
    Currentaccount("8", "farid", 12750),
    Currentaccount("11", "ramy", 705522),
  };

  print("Welcome To The Bank Management System");
  print('Please Choose Your Operation');
  print('''1-Create an Account
  2-Deposit Money
  3-Withdraw Money
  4-Check Balance
  5-View Transactions
  6- Exist''');
  int operationNumber = int.parse(stdin.readLineSync()!);
  switch (operationNumber) {
    case 1:
      print('''1-Current Account
    2-Saving Account
    3-Normal Account''');
      print('Choose the type of your account');
      int typeOfOperation = int.parse(stdin.readLineSync()!);
      switch (typeOfOperation) {
        case 1:
          print("enter your ID");
          try {
            String id = stdin.readLineSync()!;

            print("enter your Name");
            String name = stdin.readLineSync()!;
            print("enter your Balance");
            double balance = double.parse(stdin.readLineSync()!);
            Currentaccount acc1 = Currentaccount(id, name, balance);
            acc1.setBalance(balance);
            currentAccounts.add(acc1);
          } catch (e) {
            print(e);
          }
      }
      break;
    case 2:
      print("enter your ID");
      try {
        String id = stdin.readLineSync()!;

        print("enter your Name");
        String name = stdin.readLineSync()!;
        print("enter your Balance");
        double balance = double.parse(stdin.readLineSync()!);
        SavingAccount acc1 = SavingAccount(id, name, balance);
        acc1.setBalance(balance);
        savingAccounts.add(acc1);
      } catch (e) {
        print(e);
      }
      break;
    case 3:
      print("enter your ID");
      try {
        String id = stdin.readLineSync()!;

        print("enter your Name");
        String name = stdin.readLineSync()!;
        print("enter your Balance");
        double balance = double.parse(stdin.readLineSync()!);
        BankAccount acc1 = BankAccount(id, name, balance);
        accounts.add(acc1);
        acc1.setBalance(balance);
      } catch (e) {
        print(e);
      }
      break;

    case 2:
      print("enter your ID");
      String id = stdin.readLineSync()!;
      BankAccount acc1 = BankAccount(id, 'name', 0);
      BankAccount? foundAccount;
      for (var account in accounts) {
        if (account.accountNumber == id) {
          foundAccount = account;
          print("enter an Amount");
          double amount = double.parse(stdin.readLineSync()!);
          acc1.DepositMoney(amount);
        } else {
          print("This Account Not Founded");
        }
      }
      break;
    case 3:
      print("enter your ID");
      String id = stdin.readLineSync()!;
      BankAccount acc1 = BankAccount(id, 'name', 0);
      BankAccount? foundAccount;
      for (var account in accounts) {
        if (account.accountNumber == id) {
          foundAccount = account;
          print("enter an Amount");
          double amount = double.parse(stdin.readLineSync()!);
          acc1.withdrawMoney(amount);
        } else {
          print("This Account Not Founded");
        }
      }
      break;
    case 4:
      print("enter your ID");
      String id = stdin.readLineSync()!;
      BankAccount acc1 = BankAccount(id, 'name', 0);
      BankAccount? foundAccount;
      for (var account in accounts) {
        if (account.accountNumber == id) {
          foundAccount = account;
          print(acc1.getBalance());
        } else {
          print("This Account Not Founded");
        }
      }
      break;
    case 5:
      print("enter your ID");
      String id = stdin.readLineSync()!;
      BankAccount acc1 = BankAccount(id, 'name', 0);
      BankAccount? foundAccount;
      for (var account in accounts) {
        if (account.accountNumber == id) {
          foundAccount = account;
          print(acc1.transactions);
        } else {
          print("This Account Not Founded");
        }
      }
      break;
    case 6:
      print("You Are Welcome");
      break;

    default:
      print("Try Again");
  }
}

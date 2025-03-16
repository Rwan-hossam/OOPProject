import 'BankAccount.dart';

class Savingaccount extends BankAccount {
  final double minBalance = 1000;
  double interestRate = 5;
  Savingaccount(super.accountNumber, super.holderName, super._balance);
  void applyInterest() {
    double interest = getBalance() * (interestRate / 100);
    DepositMoney(interest);
  }

  @override
  void withdrawMoney(double amount) {
    // TODO: implement DepositMoney

    if (getBalance() - amount >= minBalance) {
      super.withdrawMoney(amount);
    } else {
      print("Cannot withdraw");
    }
  }
}

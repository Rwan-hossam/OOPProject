import 'bankAccount.dart';

class Currentaccount extends BankAccount {
  double transactionFee = 55.0;
  double _balance = 50.0;
  Currentaccount(String accountNumber, String holderName, double balance)
      : super(accountNumber, holderName, balance);
  @override
  setBalance(double amount) {
    if (amount > 0 && amount <= (_balance + transactionFee)) {
      _balance -= (amount + transactionFee);
      transactions.add('$amount was deducted with $transactionFee Fees');
    } else {
      print('Insufficient Balance :) ');
    }
  }
}

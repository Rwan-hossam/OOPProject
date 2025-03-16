class BankAccount {
  String accountNumber;
  String holderName;
  double _balance = 0;
  List<String> transactions = [];
  BankAccount(this.accountNumber, this.holderName, this._balance);
  void setBalance(double balance) {
    if (balance > 0) {
      _balance = balance;
    } else {
      print('failed proccess');
    }
  }

  double getBalance() {
    print('Your Balance=$_balance');
    return _balance;
  }

  //Banking Operations
  void DepositMoney(double amount) {
    if (amount > 0) {
      _balance += amount;
      String time = DateTime.now().toString();
      transactions.add("$time Deposit $amount");
      print('The deposit has been successfully made.');
    } else {
      print('The operation is not available');
    }
  }

  void withdrawMoney(double amount) {
    if (amount <= _balance && amount > 0) {
      _balance -= amount;
      String time = DateTime.now().toString();

      transactions.add("$time withdrow$amount");
      print('The withdraw has been successfully made.');
    } else {
      print('The operation is not available');
    }
  }

  void checkBalance() {
    print('AccountBalance=$_balance');
  }

  void transactionHistory() {
    for (var trans in transactions) {
      print(trans);
    }
  }
}

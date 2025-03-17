import 'dart:io';

void main(List<String> arguments) {
  print('Welcome to the Bank Management');
  print('Choose an Operation');
  print('''1. Create Account
2. Deposit Money
3. Withdraw Money
4. Check Balance
5. View Transactions
6. Exit''');
  int operationNum = int.parse(stdin.readLineSync()!);
  switch (operationNum) {
    case 1:
      break;
    default:
  }
}

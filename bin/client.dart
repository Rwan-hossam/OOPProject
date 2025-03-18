import 'BankAccount.dart';
import 'person.dart';

class Client extends Person {
  BankAccount account = BankAccount('', '', 0);
  CustomerType customerType;
  Client(super.Name, this.customerType, super.ID, super.Age, super.address,
      super.genderType, this.account);

  @override
  void role() {
    // TODO: implement role
    print('Iam a client');
  }
}

enum CustomerType { VIP, Rgular, Premium }

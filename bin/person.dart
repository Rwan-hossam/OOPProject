abstract class Person {
  String Name;
  int ID;
  int Age;
  CustomerType customerType;
  String address;
  GenderType genderType;
  Person(this.Name, this.customerType, this.ID, this.Age, this.address,
      this.genderType);
  void role();
}

enum CustomerType { VIP, Rgular, Premium }

enum GenderType { Male, Female }

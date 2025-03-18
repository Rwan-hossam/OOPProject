abstract class Person {
  String Name;
  int ID;
  int Age;

  String address;
  GenderType genderType;
  Person(this.Name, this.ID, this.Age, this.address, this.genderType);
  void role();
}

enum GenderType { Male, Female }

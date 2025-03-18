import 'person.dart';

class Employee extends Person {
  int Salery;
  String Jobtitle;

  Employee(super.Name, super.ID, super.Age, super.address, super.genderType,
      this.Jobtitle, this.Salery);

  @override
  void role() {
    // TODO: implement role
    print("Iam an Employee");
  }
}

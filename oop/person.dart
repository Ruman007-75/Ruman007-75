
  class Person {
  String name = 'ruman';
  String address = 'Sylhet';
  int age = 30;

  //Person ({required this.name, required this.address, required this.age,});
  //Person ({required String name, required String address, required int age }) {
  //this.name = name;
   // this.address = address;
   // this.age = age;
  //}
  Person(String name, String address, int age) {
    this.name = name;
    this.age = age;
    this.address = address;
  }

  void printName(){
    print(name);
  }


  }
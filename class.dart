// every dart program has to have a main function
void main() {
  var thisPerson = new Person('Martins');
  //  thisPerson.name = 'Martins';
  thisPerson.printName();
}

class Person {
  String name;

  Person(this.name);

  // A constructor for a dart is an identical replica for the class name in itself
  //  Person(name) {                 Person(this.name);
  //    this.name = name;            // this is the same thing on the left and write
  //  }

  void printName() {
    print(this.name.toLowerCase());
  }
}

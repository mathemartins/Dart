void main() {
  // variable declaration and assignment
  var name = myName();
  // best way of writing string substition in dart ${name.length}
  print('My name is $name');
}

String myName() {
  return 'Stephen';
}

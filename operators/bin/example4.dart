void main(List<String> args) {
  int age = 40;

  // none of these infix change the value of the age
  print(age + 20);
  print(age - 20);
  print(age * 20);
  print(age / 20);
  print(age ~/ 20);
  print(age % 20);
  // kind of formula
  // 50 / 20
  // 2 * 20 = 40
  // 50 - 40 = 10
  print(age == 20);
  print(age != 20);

  // comparison operators
  print(age < 20);
  print(age > 20);
  print(age <= 20);
  print(age >= 20);

  // bitwise infix operators
  print(age & 20);
  print(age |  20);
  print(age ^  20);
  // shift left & right
  print(age <<  20);
  print(age >>  20);


}
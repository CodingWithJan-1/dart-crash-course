void main(List<String> args) {
  
  print(add());
  print(add(20, 10));
  print('----------');
  print(minus());
  print(minus(10, 20));

  print('----------');

  print(performOperation(10, 20,(a, b) => a + b));
  print(performOperation(10, 20,(a, b) => a - b));
  print('----------');
  print(performOperation(6, 7, add));
  print(performOperation(6, 7, minus));

}

int performOperation(int b, int a, int Function(int, int) operation,) => operation(a, b);

int add([int lhs = 10, int rhs = 5]) => lhs + rhs;
int minus([int lhs = 10, int rhs = 5]) => lhs - rhs;
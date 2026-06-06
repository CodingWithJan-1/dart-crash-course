void main(List<String> args) {
  describeFullName('Jan');
  describeFullName('Jan', lastName: null);
}

// optional positional with required arguments

void describeFullName(String firstName, {String? lastName = 'baz'}) {
  print('Hello, $firstName $lastName');
}

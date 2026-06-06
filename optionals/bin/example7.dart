void main(List<String> args) {
  final String? firstName = null;

  print(firstName);

  String foo = firstName!; // this operator
  print(foo);

  // for this code please avoid using the ! unless you need it
  // its force unwrapping anyways so could crash applications :)
}
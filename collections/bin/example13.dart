// collection Comprehension

void main(List<String> args) {
  normalEmplementation();
  otherNormalEmplementation();
}

void normalEmplementation() {
  final string = 'abracadabra';
  var result = '';

  for (final char in string.split('')) {
    if (char == 'a' || char == 'b' || char == 'c') {
    } else {
      result += char;
    }
  }

  print(result);
}

void otherNormalEmplementation() {
  final string = 'abracadabra';
  var allExceptAbc = {
    for (final char in string.split('')) 'abc'.contains(char) ? null : char,
  }..removeAll([null]);

  final result = allExceptAbc.cast<String>();

  print(result);
}

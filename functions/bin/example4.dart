void main(List<String> args) {

  // sayGoodbye(); invalid code
  // sayGoodbye('peter'); invalid code
  sayGoodbye('Peter', 'malone');
}

// positional arguments
// rule 1: must not be Null
// rule 2: satisfy the contract tho you could make it optional

void sayGoodbye(String person1, String person2) {
  print('Goodbye $person1, and $person2');
}
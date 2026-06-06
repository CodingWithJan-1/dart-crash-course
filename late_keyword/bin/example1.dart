late String name;  // it must be initialize

void main(List<String> args) {
  try {
    print(name); // breach of contract
  } catch (e) {
    print(e);
  }

  name = 'foo bar';
  print(name);
}
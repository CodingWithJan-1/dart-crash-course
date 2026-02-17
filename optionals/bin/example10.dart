void main (List<String> args) {
  String? getOptionalFullName() {
    return null;
  }

  String getFullName(){
    return 'Bar Foo';
  }

  final fullname = getOptionalFullName() ?? getFullName();
  print(fullname); 

}
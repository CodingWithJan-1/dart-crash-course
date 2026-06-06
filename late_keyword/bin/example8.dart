void main(List<String> args) {
  print('late fullNameis being initialize');
  late final String fullName = getFullName();
  final resolvedFullName = fullName; // this resolve the fullname imediately

  print('Resolved Full name: $resolvedFullName');
}


String getFullName (){
  return 'Jan Bitoon';
}
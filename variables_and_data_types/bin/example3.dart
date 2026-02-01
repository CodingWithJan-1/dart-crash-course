void main(List<String> args) {
  var address = 'Pulanglupa, trento';
  print(address);
  address = 'P-2, pulanglupa, Trento';
  print(address);
  address = address.replaceAll('P-2', "Purok-2");
  print(address);
}
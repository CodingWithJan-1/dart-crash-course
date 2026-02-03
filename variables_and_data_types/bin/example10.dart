void main(List<String> args) {
  late final order = 'Call jan';
  print(order);

  late final response = callJan();
  print('wheres JAn');
  print(response); 
}

String callJan(){
  print('"calling Jan"');
  return 'JAn: Hey im here';
}
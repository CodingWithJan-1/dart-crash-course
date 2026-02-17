void main(List<String> args) {
print(getFullName(null, null));
print(getFullName('jan', null));
print(getFullName(null, 'bitoon'));
print(getFullName('jan', 'bitoon'));

}

String getFullName(
  String? firstName,
  String? lastName,
) => withAll([firstName, lastName], (name) => name.join(' ')) ?? 'Empty';

String? withAll(
  List <String?> optionals,
  String Function(List<String>) callback,
) => optionals.any((e) => e == null) 
        ? null 
        : callback(optionals.cast<String>());
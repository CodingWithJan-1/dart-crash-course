import 'package:collection/collection.dart';

// topic unmodifiable List

void main(List<String> args) {
  final info = {
    "name": "Jeb",
    "age": "21",
    "address": {"street": "Pulang-lupa", "municipality": "Trento, Agusan"},
  };

  final info2 = UnmodifiableMapView(info);

  info.addAll({"phone": "0945-436-6220"});

  print(info);

  try {
    info2.addAll({"phone": "0945-436-6220"});
  } catch (e) {
    print(e);
  }
}

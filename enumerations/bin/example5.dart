// falling through on enumerations

void main(List<String> args) {
  final vehicle = VehicleType.car;

  switch (vehicle) {
    case VehicleType.motorcycle:
    case VehicleType.car:
    case VehicleType.bycicle:
      print('common vehicle');
      break;
    case VehicleType.truck:
      print('uncommon vehicle');
  }
}

enum VehicleType { motorcycle, car, bycicle, truck }

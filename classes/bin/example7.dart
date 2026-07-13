
// static properties and static methods

// Key rule: static members can't see instance members

void main(List<String> args) {
   print(Car(carName: 'BMW'));
   print(Car._carsInstantiated);

   print(Car(carName: 'Porche'));
   print(Car._carsInstantiated);
}

// instance.memeber X || class.member ✓

class Car {
    static int _carsInstantiated = 0;

    int get carsInstantiated => _carsInstantiated;

    static void _incrementCarsInstantiated () => _carsInstantiated++; 

    final String _carName;

    Car({required this._carName}) {
        _incrementCarsInstantiated();
    }

    @override
  String toString() {
    return 'Car name: $_carName';
  }
}
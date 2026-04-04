void main(List<String> args) {
  const info = {
    'name' : 'Jan',
    'age' : '21',
    'height' : "5'11",
    'address' : {
      'street' : 'Purok-2',
      'barangay' : 'Pulang lupa',
      'province/city' : 'Agusan del Sur',
    },
  };

  for (var entry in info.entries) {
    print('${entry.key.toUpperCase()} : ${entry.value}');
  }
}
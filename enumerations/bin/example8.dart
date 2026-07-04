void main(List<String> args) {
  // print(TeslaCars.values);
  print([...TeslaCars.values]..sort());
}

enum TeslaCars implements Comparable<TeslaCars>{

  modelA(weightInKg: 2.9),
  modelB(weightInKg: 2.7),
  modelC(weightInKg: 2.5);
  
  final double weightInKg;

  const TeslaCars({
    required this.weightInKg
  });
  
  @override
  int compareTo(TeslaCars other) 
    => weightInKg.compareTo(
      other.weightInKg
    );

  
  
}
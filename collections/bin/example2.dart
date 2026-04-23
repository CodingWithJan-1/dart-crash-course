// ignore: unused_import
import 'package:collection/collection.dart';

void main(List<String> args) {
  // create a set
  final numbers = {1, 2, 3, 4};
  final numbers2 = {1, 2, 3, 4};

  // duplicates are automatically ignored
  final test = {1, 1, 2, 2};
  print(test); // {1, 2}

  // add → adds item (only if not already present)
  numbers.add(5);

  // add duplicate → does nothing
  numbers.add(5); // still only one 5

  // addAll → add multiple items
  numbers.addAll([6, 7, 7]); // duplicates ignored

  // remove → removes item
  // returns true if removed, false if not found
  numbers.remove(3);

  // removeWhere → remove based on condition
  numbers.removeWhere((n) => n > 5);

  // contains → check if value exists
  numbers.contains(2); // true

  // length → number of unique items
  numbers.length;

  // isEmpty / isNotEmpty
  numbers.isEmpty;
  numbers.isNotEmpty;

  // clear → remove everything
  numbers.clear();

  // -------------------------------
  // Set-specific methods
  // -------------------------------

  var a = {1, 2, 3};
  var b = {3, 4, 5};

  // union → combine both sets (no duplicates)
  a.union(b); // {1, 2, 3, 4, 5}

  // intersection → common values
  a.intersection(b); // {3}

  // difference → values in A but not in B
  a.difference(b); // {1, 2}

  // lookup → returns the actual stored value
  a.lookup(2); // 2

  // -------------------------------
  // conversions
  // -------------------------------

  var list = [1, 2, 2, 3];

  // List → Set (removes duplicates)
  var unique = list.toSet(); // {1, 2, 3}

  // Set → List
  var backToList = unique.toList();

  // -------------------------------
  // iteration
  // -------------------------------

  for (var n in a) {
    print(n);
  }

  // or
  a.forEach((n) => print(n));

  // Dealing with hascodes
  // doesnt have the same hashcode even tho same values

  print(numbers.hashCode);
  print(numbers2.hashCode);

  if (numbers.contains(1)) {
    print('Value found');
  } else {
    print('Not found');
  }

  if (numbers == numbers2) {
    print('The same');
  } else {
    print('not the same');
  }

  // -------------------------------
  // important behavior
  // -------------------------------

  // Sets are unordered (don’t rely on index)
  // no index access like set[0]
}

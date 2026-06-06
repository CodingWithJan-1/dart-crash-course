// Exploring Lists
void main() {
  var numbers = [1, 2, 3, 4, 5];

  // contains → checks if value exists (returns bool)
  numbers.contains(3); // true

  //  where → filters items based on condition (returns Iterable)
  numbers.where((n) => n > 2); // (3, 4, 5)
  numbers.where((n) => n > 2).toList(); // convert to List

  //  firstWhere → returns FIRST match
  //  throws error if no match unless orElse is provided
  numbers.firstWhere((n) => n > 2); // 3
  numbers.firstWhere((n) => n > 10, orElse: () => -1); // safe fallback

  //  lastWhere → same as firstWhere but from the end
  numbers.lastWhere((n) => n > 2); // 5

  // map → transforms each item
  numbers.map((n) => n * 2); // (2, 4, 6, 8, 10)

  //  toList → converts Iterable to List
  numbers.map((n) => n * 2).toList();

  //  sublist → slice by index
  //  start must be >= 0
  //  end must be <= length
  numbers.sublist(1, 3); // [2, 3]

  //  take → get first N items
  numbers.take(3); // (1, 2, 3)

  //  skip → skip first N items
  numbers.skip(2); // (3, 4, 5)

  //  reduce → combines values into ONE
  //  list must NOT be empty
  numbers.reduce((a, b) => a + b); // sum = 15

  //  fold → like reduce but has initial value (safer)
  numbers.fold(0, (sum, n) => sum + n); // 15

  //  any → returns true if ANY item matches
  numbers.any((n) => n > 4); // true

  //  every → returns true if ALL items match
  numbers.every((n) => n > 0); // true

  //  indexOf → finds index of value
  //  returns -1 if not found
  numbers.indexOf(3); // 2

  //  elementAt → get item by index
  //  error if index is out of range
  numbers.elementAt(2); // 3

  //  add → add single item
  numbers.add(6); // [1,2,3,4,5,6]

  //  addAll → add multiple items
  numbers.addAll([7, 8]);

  //  remove → removes first occurrence
  //  returns true if removed
  numbers.remove(3);

  //  removeAt → removes by index
  //  error if index invalid
  numbers.removeAt(0);

  //  removeWhere → removes items based on condition
  numbers.removeWhere((n) => n > 4);

  //  clear → removes everything
  numbers.clear();

  //  isEmpty / isNotEmpty
  numbers.isEmpty;
  numbers.isNotEmpty;

  //  length → total items
  numbers.length;

  //  reversed → returns reversed Iterable (not List)
  numbers.reversed;
  numbers.reversed.toList(); // convert if needed

  // join → combine into string
  numbers.join(", "); // "1, 2, 3, 4, 5"

  //  sort → modifies original list
  //  changes the list permanently
  numbers.sort();

  //  shuffle → random order
  numbers.shuffle();
}

// This imports the dart:collection library which gives us access to ListBase
// ListBase is a helper class that lets us build our own custom List
import 'dart:collection';

void main(List<String> args) {
  // --- WHY WE NEED A SAFE LIST ---
  // Normal List in Dart will CRASH (throw an Exception) if you:
  //   1. Call .first or .last on an empty list
  //   2. Access an index that doesn't exist, like list[5] when there are only 2 items
  //   3. Try to set the length bigger — it won't auto-fill the new slots for you
  // So instead of using the default List, we create our own "SafeList" that handles these problems

  // --- SETTING UP OUR SAFE VALUES ---

  // 'notFound' is what SafeList will return when you try to access an index that is OUT OF RANGE
  // Example: if the list has 2 items and you do myList[99], it returns 'NOT_FOUND' instead of crashing
  const notFound = 'NOT_FOUND';

  // 'defaultString' is what SafeList will use to FILL NEW SLOTS when you increase the list size
  // Example: if the list has 2 items and you set myList.length = 4, the 2 new slots get '' (empty string)
  const defaultString = '';

  // --- CREATING OUR SAFELIST ---

  // We create a SafeList with 2 initial values: 'Foo' and 'bar'
  // defaultValue: what to fill new slots with when the list grows
  // absentValue: what to return when accessing an index that doesn't exist
  // values: the initial items in the list
  final myList = SafeList(
    defaultValue: notFound, // new empty slots will be filled with 'NOT_FOUND'
    absentValue:
        defaultString, // out-of-range access will return '' instead of crashing
    values: ['Foo', 'bar'], // the list starts with these 2 items
  );

  print(
    myList[0],
  ); // prints 'Foo'  — index 0 exists, so it returns the real value
  print(
    myList[1],
  ); // prints 'bar'  — index 1 exists, so it returns the real value

  print(myList.first); // prints 'Foo' — safely returns the first item
  print(myList.last); // prints 'bar' — safely returns the last item

  // index 3 does NOT exist (list only has index 0 and 1)
  // instead of crashing, SafeList returns absentValue which is '' (empty string)
  print(myList[3]);

  // We are GROWING the list from size 2 to size 4
  // The 2 new slots (index 2 and 3) will be filled with defaultValue = 'NOT_FOUND'
  myList.length = 4;

  // prints the whole list: [Foo, bar, NOT_FOUND, NOT_FOUND]
  print(myList);
}

// --- THE SAFELIST CLASS ---

// SafeList<T> is a GENERIC class — the <T> means it can hold any type
// Example: SafeList<String> holds Strings, SafeList<int> holds integers
// 'extends ListBase<T>' means SafeList INHERITS all List behaviors from ListBase
// But we OVERRIDE (replace) the core behaviors to make them safe
class SafeList<T> extends ListBase<T> {
  // This is the ACTUAL internal list that stores all our data
  // It's private (starts with _) so it can only be used inside this class
  // 'final' means the variable itself can't be reassigned, but the list contents can change
  final List<T> _list;

  // absentValue is returned when you try to access an index that doesn't exist
  // Instead of throwing a RangeError, we return this safe fallback value
  final T absentValue;

  // defaultValue is used to fill in new slots when the list grows in size
  // For example, if you do list.length = 10 and the list only has 3 items,
  // the 7 new slots get filled with this value
  final T defaultValue;

  // --- CONSTRUCTOR ---
  // This is the function that runs when you write: SafeList(defaultValue: ..., ...)
  // 'required' means you MUST provide these values — they can't be skipped
  // The ': _list = values' part is called an "initializer list"
  // It sets _list to the 'values' you passed in, BEFORE the constructor body runs
  SafeList({
    required this.defaultValue, // must provide: value for new empty slots
    required this.absentValue, // must provide: value for out-of-range access
    required List<T> values, // must provide: the starting items of the list
  }) : _list = values; // assigns the 'values' parameter to our private _list

  // --- OPERATOR [] (READ / GET) ---
  // This runs when you do: myList[index]
  // '@override' means we are REPLACING the default behavior from ListBase
  // If 'index' is within the valid range, return the real item from _list
  // If 'index' is OUT OF RANGE, return absentValue instead of crashing
  @override
  T operator [](int index) => index < _list.length ? _list[index] : absentValue;
  //                          ^^^ if index is valid  ^^^ return item  ^^^ else return safe fallback

  // --- OPERATOR []= (WRITE / SET) ---
  // This runs when you do: myList[index] = value
  // We just pass it through to the internal _list normally
  // Note: this will still crash if the index is out of range — we only made READING safe
  @override
  void operator []=(int index, T value) => _list[index] = value;

  // --- LENGTH GETTER ---
  // This runs when you read: myList.length
  // We just return the length of the internal _list
  @override
  int get length => _list.length;

  // --- LENGTH SETTER ---
  // This runs when you ASSIGN a new size: myList.length = 4
  // ListBase requires us to override this so the list can be resized
  @override
  set length(int newLength) {
    if (newLength < _list.length) {
      // If the new size is SMALLER, just shrink the list normally
      // Example: list has [A, B, C, D] and you set length = 2 → becomes [A, B]
      _list.length = newLength;
    } else {
      // If the new size is BIGGER, we fill the new slots with defaultValue
      // 'newLength - _list.length' = how many new slots we need
      // 'List.filled(count, defaultValue)' creates a list of that many defaultValues
      // '.addAll(...)' appends them to our existing list
      // Example: list has [A, B] and you set length = 4 → becomes [A, B, NOT_FOUND, NOT_FOUND]
      _list.addAll(List.filled(newLength - _list.length, defaultValue));
    }
  }

  // --- FIRST GETTER ---
  // This runs when you do: myList.first
  // If the list has items, return the actual first item
  // If the list is EMPTY, return absentValue instead of crashing
  @override
  T get first => _list.isNotEmpty ? _list.first : absentValue;

  // --- LAST GETTER ---
  // This runs when you do: myList.last
  // If the list has items, return the actual last item
  // If the list is EMPTY, return absentValue instead of crashing
  @override
  T get last => _list.isNotEmpty ? _list.last : absentValue;
}

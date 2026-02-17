void main(List<String> args) {
   String? firstName = 'Jan';
   String? lastName = 'Bitoon';

   final fullName = firstName.flatMap(
    (f) => lastName.flatMap(
        (l) => '$f $l'
    ),
   ) ?? "Either the full name or the last Name is null";

   print(fullName);
}

// flatmap is unwrapping and mapping an optional value

extension Flatmap<T> on T? {
    R? flatMap<R>(
        R? Function(T) callback,
    ) {
        final shadow = this;
        if (shadow == null) {
            return null;
        } else {
            return callback(shadow);
        }
    } 
    
}
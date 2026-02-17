void main(List<String> args) {
  final String? firstName = null;
  if (firstName == null) {
    print("firstName is null");
  } else {
    // ignore: unused_local_variable
    final int length = firstName.length;
  }
}
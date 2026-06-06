void main(List<String> args) {
    const names = ['John','Paul','George','Sainz'];

    int counter = 0; 

    // while (counter < names.length) {
    //   print(names[counter]);
    //   counter++;
    // }

    print('---------------');

    do {
      final name = names[counter++];
      if (name == 'George') {
        continue;
      }
      print(name);
    } while (counter < names.length);

    // print(name.runtimeType);
}
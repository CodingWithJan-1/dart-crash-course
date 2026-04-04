import 'dart:io';

void main(List<String> args) {
  do {
    stdout.write('Please enter age or type "EXIT": ');
    final input = stdin.readLineSync();

    if (input == null || input.trim().isEmpty) {
        stdout.writeln('Invalid Please enter again');
        continue;
    }

    if (input.toUpperCase() == 'EXIT') {
        break;
    }

    final age = int.tryParse(input);

    if (age == null || age < 0) {
        stdout.writeln('Please enter a valid input');
        continue;
    }

    switch (age) {
      case 13:
        print('Your are a Teenager!');
        break;
      case 21:
        print('Your are an Adult!');
        break;

      default:
        print('daymmmmm UNC');
    }
  } while (true);
}

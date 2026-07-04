void main(List<String> args) {
  getDayType(Day.monday);
  getDayType(Day.saturday);
  getDayType(Day.sunday);
}

enum Day { monday, tuesday, wednesday, thursday, friday, saturday, sunday }

void getDayType(Day day) {
  if (day == Day.saturday || day == Day.sunday) {
    print('Weekends');
  } else {
    print('weekdays');
  }
}

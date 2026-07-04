void main(List<String> args) {
  getInstruction(TrafficLight.red);
  getInstruction(TrafficLight.yellow);
  getInstruction(TrafficLight.green);
}

enum TrafficLight { red, yellow, green }

void getInstruction(TrafficLight color) {
  switch (color) {
    case TrafficLight.red:
      print('Stop!');
      break;
    case TrafficLight.yellow:
      print('Slow down!');
      break;
    case TrafficLight.green:
      print('Go!');
      break;
  }
}

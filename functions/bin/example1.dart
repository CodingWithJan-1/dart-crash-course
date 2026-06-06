void main(List<String> args) {
  // doSomething(); invalid code
  
  doSomeShit(action: 'Did the dishes');
   doSomeShit(action: null); /*we need to explicitly call 
                             the action (name) when calling the function */
}

// as you noticed here the action is a "named" parameter
// you call add a default value

void doSomeShit({String? action = 'Did what?'}) {
  print(action);
}


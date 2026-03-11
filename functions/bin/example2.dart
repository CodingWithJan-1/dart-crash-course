void main(List<String> args) {
  // doSomething(); invalid code

  doSomeShit(action: 'Did the dishes');
  doSomeShit(action: null); /*we need to explicitly call 
                             the action (name) when calling the function */
}

// well here the action param is required
// means that whenever you call a function
// its must have a value other wise it will
// result to error

// you call initiate a default value on a required unlike the example1

void doSomeShit({ required String? action}) {
  if (action != null) {
    print('Hey great you $action, nice!');
  } else {
    print('bruh you lazy mafaka get you ass up boi');
  }
}


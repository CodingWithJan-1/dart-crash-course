
// optional positional parameters/args
void main(List<String> args) {
  
  convertToUpperCase(); // null
  convertToUpperCase('Foo');
  convertToUpperCase(null, 'broskie');
  // convertToUpperCase(null, null); invalid code

}

void convertToUpperCase([
    String? firstName, 
    String lastName =  'bitoon'
  ]) {
    print(firstName?.toUpperCase());
    print(lastName.toUpperCase());
  }
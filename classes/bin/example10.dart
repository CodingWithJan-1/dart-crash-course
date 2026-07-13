// abstact classes

void main(List<String> args) {


    const person1 = CEO();
    CEO().greet();
    person1.introduceRole();
    person1.role;

    const person2 = CTO();
    person2.introduceRole();
    person2.role;

    

    
}

abstract class StartUp {
    final Role role;

    const StartUp({required this.role});

    void introduceRole(); 

    void greet(){
        print('Hello Welcome to the team!');
    }
}

class CEO extends StartUp {

    const CEO() : super(role: Role.CEO);

  @override
  void introduceRole() {
    print('Hello! I am the CEO, head of the Start up');
  }
}

class CTO extends StartUp {

    const CTO() : super(role: Role.CTO);

  @override
  void introduceRole() {
    print('Hello! I am the CTO, head of the Start up');
  }
}

enum Role {
    CEO,
    CTO,
    COO,
    Chief,
}
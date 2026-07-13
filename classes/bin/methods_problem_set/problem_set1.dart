

/*
  Beginner: BankAccount
  Create a BankAccount class with:

  A field balance (starts at 0)
  A method deposit(double amount) that adds to the balance
  A method withdraw(double amount) that subtracts from the balance
  A method checkBalance() that prints the current balance
*/

void main(List<String> args) {
  final account = BankAccount();

  account.deposit(100);
  account.withdraw(30);
  print(account.checkBalance);
  
}

class BankAccount {
   double balance;

  BankAccount({this.balance = 0});

  void deposit(double amount) {
    print('Depositing $amount...');
     balance += amount;
  }

  void withdraw(double amount) {
    print('withdrawing $amount...');
    balance -= amount;
  }

  String get checkBalance  => 'Your balance is $balance'; 
}
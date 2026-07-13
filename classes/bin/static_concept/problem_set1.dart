
// static implementation of bankAccount problem

void main(List<String> args) {
    print(BankAccount.balance);
    BankAccount.deposit(100);
    BankAccount.withdraw(50);
    print(BankAccount.balance);
}

class BankAccount {
    static double _balance = 0;

    static double get balance => _balance;

    static void deposit(double amount){
         _balance += amount;
    } 

    static void withdraw(double amount){
        _balance -= amount;
    }
}
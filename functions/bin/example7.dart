void main(List<String> args) {
    print(add(3));
    print(add(5, 1));
    print(add(2));
}

int add([int num1 = 1, int num2 = 2]) {
    return num1 + num2;
}
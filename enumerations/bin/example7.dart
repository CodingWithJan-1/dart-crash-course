
void main(List<String> args) {
    AnimalType.cat
        ..jumping()
        ..running();
    AnimalType.dog
        ..jumping()
        ..running();
    AnimalType.rabbit
        ..jumping()
        ..running();
}

enum AnimalType {
    cat,
    dog,
    rabbit;

    void running(){
        print(' $this is running...');
    }
}

extension Jump on AnimalType {
    void jumping () {
        print('$this is jumping...'); 
    }
}
class Person {
  String _name;

  Person(this._name);
  String get name => _name;
  set name(String name) {
    _name = name;
  }

  void display() {
    print('Name: $name');
  }
}

class Engine {
  String _model;
  int _speed;

  Engine(this._model, this._speed);
  String get model => _model;
  set model(String model) {
    _model = model;
  }
  
  int get speed => _speed;
  set speed(int speed) {
    _speed = speed;
  }

  void displayEngineInfo() {
    print('Model: $model, Speed: $speed km/h');
  }
}

class Car {
  String _brand;
  String _model;
  Person _owner;
  Engine _engine;

  Car(this._brand, this._model, this._owner, this._engine);
  String get brand => _brand;
  set brand(String brand) {
    _brand = brand;
  }

  String get model => _model;
  set model(String model) {
    _model = model;
  }

  // Getter for owner
  Person get owner => _owner;
  set owner(Person owner) {
    _owner = owner;
  }
  
  Engine get engine => _engine;
  set engine(Engine engine) {
    _engine = engine;
  }

  void displayCarInfo() {
    print('Brand: $brand');
    print('Model: $model');
    _owner.display();
    _engine.displayEngineInfo();
  }

  void run() {
    print('The car is running at ${_engine.speed} km/h');
  }
}

class Honda extends Car {
  String _color;

  Honda(String brand, String model, Person owner, Engine engine, this._color)
      : super(brand, model, owner, engine);

  String get color => _color;
  set color(String color) {
    _color = color;
  }

  void run() {
    print('The car is running at 120 km/h');
  }

  void displayCarInfo() {
    print('Brand: $brand');
    print('Model: $model');
    print('Color: $color');
    owner.display();
    engine.displayEngineInfo();
  }
}

void main() {
  var person = Person('John Doe');
  var engine = Engine('V8', 220);
  var car = Car('Toyota', 'Supra', person, engine);
  car.displayCarInfo();
  car.run();
  
  print('---------------------------------');
  var hondaPerson = Person('Smith Kung');
  var hondaEngine = Engine('V6', 180);
  var hondaCar = Honda('Honda', 'Civic', hondaPerson, hondaEngine, 'Red');
      
  
  hondaCar.displayCarInfo();
  hondaCar.run();
}
void main() {
  Car c1 = Car.namedConst('E1001');
  Car c2 = Car.abc('D1001');
  Car c3 = Car();
}
class Car {
  Car() {
    print("Non-parameterized constructor invoked");
  }
  Car.namedConst(String engine) {
    print("The engine is : $engine");
  }
  Car.abc(String engine)
  {
    print("abc");
  }
}
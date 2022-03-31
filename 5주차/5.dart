void main() {
  Car c = Car();
  print(c.engine);
  c.disp();
}
class Car {
// field
  String engine = "E1001";
// function
  void disp() {
    print(engine);
  }
}

void main()
{
  Car c1 = Car('E1001');
}

class Car {
    late String engine;
    Car(String eng) {
      engine = eng;
      print("The engine is : $engine");
    }
}
void main() {
  var obj = Leaf();
  obj.str = "hello";
  print(obj.str);
}

class Root {
  String? str;
  Root() {
    print("Root");
  }
}

class Child extends Root {
  Child(){
    print("Child");
  }
}

class Leaf extends Child {
  Leaf(){
    print("Leaf");
  }
}
class Student {
  String? name;
  int? age;
  String get studName {
    return name!;
  }
  set studName(String name) {
    this.name = name;
  }
  set studAge(int age) {
    if(age<= 0) {
      print("Age should be greater than 5");
    } else {
      this.age = age;
    }
  }
  int get abc {
    return age!;
  }
}

void main() {
  Student s1 = Student();
  s1.studName = 'MARK';
  s1.studAge = 0;
  print(s1.studName);
  print(s1.abc);
  print(s1.name);
}
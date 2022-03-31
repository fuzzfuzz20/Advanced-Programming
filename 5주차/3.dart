void main() {
  Calculator c = Calculator();
  print("The gross total : ${c.retTot()}");
  print("Discount :${c.retDis()}");
}
class CalculateTotal {
  int? retTot() { return 0; }
}
class CalculateDiscount {
  int? retDis() { return 1; }
}

class Calculator implements CalculateTotal,CalculateDiscount {
  @override
  int retTot() {
    return 1000;
  }
  @override
  int retDis() {
    return 50;
  }
}
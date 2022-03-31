import 'dart:io';

var cnt = 0;
void main()
{
  (fib(5));
  print("호출 횟수 : $cnt");
}
fib(number) {
  if (number == 1 || number == 2) {
    cnt = cnt+1;
    return 1;
  } else {
    cnt = cnt+1;
    return (fib(number - 1) + fib(number - 2));
  }
}
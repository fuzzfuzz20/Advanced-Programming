import 'dart:io';
void main()
{
  int i=1;
  while(i<=10){
    if(i%2==0) {
      i++;
      continue;
    }
    print(i);
    i++;
  }
}
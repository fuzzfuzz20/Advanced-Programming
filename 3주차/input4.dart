import 'dart:io';
void main()
{
  outer:
  for( int i = 1; i < 10; i++){
    inner:
    for( int j = 1; j < 10; j++){
      if(i+j == 5)
        break outer;
      print("i=$i, j=$j");
    }
  }
}
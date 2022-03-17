import 'dart:io';
void main()
{
  print("연도를 입력 하세요 : ");
  int? year = int.parse(stdin.readLineSync()!);
  if(year%4==0 && year%100 ==0 && year%400!=0)
    print("$year년은 윤년입니다.");
  else
    print("$year년은 평년입니다.");
}
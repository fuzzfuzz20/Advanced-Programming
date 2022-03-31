void main()
{
  ObjCnt();
  ObjCnt();
  ObjCnt();
  ObjCnt();
  ObjCnt();
  print(ObjCnt.count);
}

class ObjCnt {
    static int count = 0;
    ObjCnt(){
      count++;
  }
}
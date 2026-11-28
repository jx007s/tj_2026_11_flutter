import 'dart:math';

void main() {
  List<int> arr = [11, 44, 33, 11, 55, 44, 11, 33, 66, 22];
  Set<int> ss = {11, 44, 33, 11, 55, 44, 11, 33, 66, 22};

  print("arr : $arr");
  print("ss : $ss");

  print("arr[0] : ${arr[0]}");
  //print("ss[0] : ${ss[0]}");  원소로 호출불가

  // for in 과 유사
  arr.forEach((e) {
    print(e);
  });
  print("ss -------------------1");
  for (var s in ss) {
    //index로 호출 불가하나 for를 이용한 원소 호출 가능
    print(s);
  }
  print("ss -------------------2");
  ss.forEach((e) {
    print(e);
  });
  ss.add(100);
  print("add(100) 1 : $ss");
  ss.add(100);
  print("add(100) 2 : $ss");
  //ss.insert(2,200);
  ss.addAll([123, 456, 33, 123, 789]);
  print("addAll([123, 456, 789]) : $ss");
  print("contains(55) : ${ss.contains(55)}");
  bool bb = ss.remove(66);
  print("remove(66) : $ss , $bb");

  Random rd = Random();
  print(rd.nextInt(3)); // 0~2 랜덤

  List<int> lotto1 = [];
  Set<int> lotto2 = {};

  while (true) {
    int num = rd.nextInt(45) + 1;

    lotto1.add(num);
    lotto2.add(num);

    if (lotto2.length == 6) {
      break;
    }
  }
  print("lotto1 : $lotto1");
  print("lotto2 : $lotto2");
}
/*
05_bingo.dart

빙고를 구현해 주세요
 숫자 범위 : 1-> 100
 출력모양 : 5 x 5

 * * * * *
 * * * * *
 * * * * *
 * * * * *
 * * * * *

*/
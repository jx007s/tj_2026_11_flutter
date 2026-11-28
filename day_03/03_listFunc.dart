void main() {
  print("생성========");
  List<int> arr1 = [12, 34, 56, 78, 55, 9];
  List<int> arr2 = List.empty();
  List<int> arr3 = List.filled(5, 20);
  List<int> arr4 = List.generate(5, (i) => i * 4);
  List<int> arr5 = [];
  print("arr1 : $arr1");
  print("arr2 : $arr2");
  print("arr3 : $arr3");
  print("arr4 : $arr4");
  print("arr5 : $arr5");

  print("추가========");
  arr1.add(100);
  print("add(100) : $arr1");
  arr1.insert(2, 200);
  print("insert(2,200) : $arr1");
  arr1.addAll([99, 88, 77]);
  print("addAll([99,88,77]) : $arr1");
  arr1.insertAll(2, [66, 55, 44]);
  print("insertAll(2,[66,55,44]) : $arr1");

  print("삭제========");
  bool bb = arr1.remove(55); // 원소값 55 삭제, 리턴 - 삭제 성공유무(성공)
  // 존재할 경우 앞에 존재하는 1개만 삭제
  print("remove(55) : $arr1 , $bb");
  bb = arr1.remove(12345); // 원소값 12345삭제, 리턴 - 삭제 성공유무(실패)
  print("remove(12345) : $arr1 , $bb");

  // bb = arr2.remove(12345); //empty() 로 생성한 List 에러발생
  bb = arr5.remove(12345);
  print("remove(12345) : $arr5 , $bb");

  int rr = arr1.removeAt(2); // index의 원소삭제 -> 리턴 : 원소값
  print("removeAt(2) : $arr1 , $rr");
  //rr = arr1.removeAt(20);  범위외 index 원소삭제시 에러발생

  rr = arr1.removeLast();
  print("removeLast() : $arr1 , $rr");

  arr1.removeRange(2, 6); //2 -> (6-1) 삭제
  print("removeRange(2, 6) : $arr1 ");

  print("변경========");
  arr1.setAll(2, [111, 222, 333]); //2번째부터 변경
  print("setAll(2, [111, 222, 333] : $arr1 ");
  //arr1.setAll(2, [101,202,303,404,505,606,707]);
  //변경리스트가 원본보다 큰경우에러발생

  arr1.setRange(2, 6, [13, 24, 35, 46, 57, 68]); //2->(6-1) 변경
  //                          변경리스트의 항목에서 범위내 값만 변경
  print("setRange(2,6, [13,24,35,46,57,68]) : $arr1 ");

  arr1.fillRange(1, 4, 1357); //1->(4-1) 변경 :1357
  print("fillRange(1,4, 1357): $arr1 ");

  arr1.clear();
  print("clear(): $arr1 ");

  print("조회========");
  arr1 = [12, 34, 56, 78, 34, 49, 23, 77, 34, 90];
  print("arr1: $arr1 ");
  print("indexOf(34) : ${arr1.indexOf(34)}");
  print("indexOf(500) : ${arr1.indexOf(500)}"); //없을경우 -1
  print("indexOf(34,3) : ${arr1.indexOf(34, 3)}"); //찾는값, 시작위치
  print("lastIndexOf(34) : ${arr1.lastIndexOf(34)}");
  print("contains(34) : ${arr1.contains(34)}"); //존재유무
  print("contains(500) : ${arr1.contains(500)}");

  print("firstWhere((e)=> e % 7 == 0) : ${arr1.firstWhere((e) => e % 7 == 0)}");
  // 각 원소 : e  ==>  e % 7 == 0  true 인 첫번째 원소값 리턴
  print("lastWhere((e)=> e % 7 == 0) : ${arr1.lastWhere((e) => e % 7 == 0)}");

  print("추출========");
  print("arr1: $arr1 ");
  arr2 = arr1.sublist(3); //3 -> 끝
  print("sublist(3) : ${arr2}");
  arr2 = arr1.sublist(3, 7); //3 -> (7-1)
  print("sublist(3,7) : ${arr2}");

  print("정렬========");
  arr2 = arr1.reversed.toList();
  print("reversed.toList() : ${arr2}");
  arr1.sort();
  print("sort() : ${arr1}");
  arr1.shuffle(); // 랜덤으로 섞기(실행할때마다 바뀜)
  print("shuffle() : ${arr1}");

  print("spread ========");
  arr1 = [11, 22, 33];
  arr3 = [100, 200, arr1[0], arr1[1], arr1[2]];
  arr4 = [300, 400, ...arr1];
  print("arr1 : ${arr1}");
  print("arr3: ${arr3}");
  print("arr4: ${arr4}");

  //List<int> arr6 = null;
  List<int> arr6; //null 불가
  List<int>? arr7 = null; // ? 인 경우 null 허용 (없을수 있다)
  List<int> arr10 = [...arr1];
  //print("arr6: $arr6"); 에러
  //arr10 = [...arr6];    에러
  print("arr7: $arr7");
  //arr10 = [...arr7];  에러
  arr10 = [...?arr7]; // arr7 이 null인 경우 처리 안함
  print("arr10: $arr10");
  List<int>? arr8 = [123, 456, 789];
  arr10 = [...?arr8]; // arr8 이 null인 경우 처리 안함, null 이 아닌 경우 연산
  print("arr10: $arr10");
}

// 03_even.dart
//  78,12,45,67,78,12,67,5,78,12,56,78,78,9
// ---- 짝수 중 같은 값은 한번만 들어간 리스트를 구현하세요

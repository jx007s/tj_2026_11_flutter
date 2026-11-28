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
}

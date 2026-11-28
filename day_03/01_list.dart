void main() {
  // list변수선언 = list 생성
  List<int> arr1 = [34, 22, 7, 12, 34, 9, 22, 34, 27];
  //                  0  1   2   3  4   5   6   7  8
  print("arr1 : $arr1");
  //print("arr1[0] : $arr1[0]");
  print("arr1[0] : ${arr1[0]}"); //원소호출 0:인덱스
  print("arr1[8] : ${arr1[8]}");
  //print("arr1[9] : ${arr1[9]}");   에러발생 (범위외 원소호출)
  arr1[2] = 2345; //원소대입
  //arr1[9] = 5678; //범위외 원소대입 불가
  print("arr1 : $arr1");
  // list변수 = 새로운 list생성 및 대입
  arr1 = [100, 200, 300, 400, 500, 600];
  print("arr1 : $arr1");
  int a = 10;
  print("a.runtimeType : ${a.runtimeType}"); //자료형 확인
  print("arr1.runtimeType : ${arr1.runtimeType}");
  print("arr1.length : ${arr1.length}"); //원소갯수
  a = 4;
  arr1[a] = 7654;
  //arr1[3] = 123.456; 자료형에러
  print("arr1 : $arr1");

  for (var i = 0; i < arr1.length; i++) {
    //print("arr1[$i] : ${arr1[i]}");
    var e = arr1[i]; // 원소를 호출하여 변수 e에 대입
    print("arr1[$i] : $e");
  }
  print("----------");
  int tot = 0;
  for (var e in arr1) {
    // e : 리스트(arr1)의 원소(arr[?]) 를 1개씩 가져와 변수 처리
    tot += e;
    print("$e : $tot"); //원소값 (index는 가져오지 않음)
  }
  print("합계 : $tot");
}

/*
02_jumList.dart
    jum = [88,77,44,55,99,76,83,45]
    합격점수 : 70
    합격자 인원수와 합격자들의 평균을 구하세요
 */

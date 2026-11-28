/*
함수정의
함수명 : fn_1
매개변수 : int a, String b
리턴 자료형 : int
리턴값 : 100
 */
int fn_1(int a, String b) {
  //print("fn_1 시작 $a, $b, $c");
  print("fn_1 시작 $a, $b");
  print("fn_1 끝");

  return 100;
}

void main() {
  int c = 3333;
  print("메인시작---- $c");
  int rr = fn_1(123, "아기상어"); //함수호출
  // a = 123, b = "아기상어"
  // rr = 100
  print("rr : $rr");

  //fn_1(); 정의한 이름, 매개변수에 맞아야한다.

  fn_1(456, "엄마상어");
  print("메인끝----");
}

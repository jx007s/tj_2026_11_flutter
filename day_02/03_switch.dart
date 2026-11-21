void main() {
  /*
    switch(값) : 값 : String, int, double 가능, bool 불가
   */
  switch (123) {}
  switch (123.456) {}
  switch ("아기상어") {}
  //switch(true){  }

  /*switch(20)  : {} 필수
    case 20:
      print("실행");
      */
  switch (10) {
    case 30:
      print("30이지롱");
    case 20:
      print("20이지롱 1"); //break 없이 case 구문 종료
    case 60: // case 의 종속 구문이 없는 경우 다음 case의 종속구문사용
    case 10:
      print("10 , 60 이지롱");
    // case 70, 80, 90:  다중 case 불가
    //     print("70,80,90 이지롱");
    case 20: // 중첩은 가능하나 실행하지 않음
      print("20이지롱 2");
    case 50:
      print("50이지롱");
    default: //if의 else와 같음, 맨 밑에 위치
      print("기본값이지롱");
  }
  print("switch 종료 ----- 1");
  //직급별 월급을 계산 하세요
  //부장 : 50%, 과장 : 30%, 대리 : 20%, 사원:10%
  //월급 :  기본급 + 기본급*보너스
  //직급과 기본급은 입력받아 처리

  // 기본급 : 300, 직급 : 과장
  //  월급 : 300 + 300*30%  => 390
  int basic = 300;
  String zg = "과장";
  double bonus = 0;
  switch (zg) {
    case "부장":
      bonus = 0.5;
    case "과장":
      bonus = 0.3;
    case "대리":
      bonus = 0.2;
    case "사원":
      bonus = 0.1;
  }
  double money = basic + basic * bonus;
  print("$basic , $zg , $money");
}

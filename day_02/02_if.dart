void main() {
  /*
  if(조건(true,false)){  // 머리
    //true 일때 실행
  }else{                  //꼬리
    // 나머지 실행
  }
  
   */
  if (false) {
    print("if 참이지롱 1");
    print("if 참이지롱 1");
    print("if 참이지롱 1");
  }
  print("if 종료 --------- 1");
  if (false) // {} 구간표시 , 구간표시 없을 경우 1개의 구문이 종속 구문
    print("if 참이지롱 2");
  print("if 참이지롱 2");
  print("if 참이지롱 2");

  print("if 종료 --------- 2");

  int a = 10, b;

  if (true) {
    a = 100;
    b = 200;
  }
  print("if 종료 ${a}, ${b}--------- 3");

  int c = 10, d;
  bool chk = 10 > 0;
  if (chk) {
    c = 100;
    d = 200;
  }
  //print("if 종료 ${c}, ${d}--------- 4");

  int e = 10;
  if (true) {
    e = 100;
    int f = 200; // 내부변수 : 제어문 구간안에서 변수 선언
    //      구간 종료시 변수도 삭제
    print("if 참이지롱 ${e}, ${f}");
  }
  //print("if 종료 ${e} , ${f}--------- 5");
  //f 는 이전 구간에서 삭제되어 사용불가

  chk = 10 > 20;
  int g = 10, h;
  if (chk) {
    g = 100;
    h = 200; // 초기화 를 모든 구간에서 할 경우
    //(초기화 되지 않는 경우가 없을 경우) 정상실행
    print("if else 참이지롱 1");
  } else {
    g = 111;
    h = 222;
    print("if else 거짓부렁 1");
  }
  print("if else 종료 ${g} ${h}--------- 1");
  /* else 단독실행 혹은 if 이전 작성 불가
  else {
    print("if else 거짓부렁 2");
  }
  if (true) {
    print("if else 참이지롱 2");
  }*/

  a = 67;
  if (a >= 80) {
    print("우수 1");
  }
  if (a >= 60) {
    print("양호 1");
  } else {
    print("미달 1");
  }
  print("if else 종료 --------- 2");
  if (a >= 80) {
    print("우수 2");
  } else if (a >= 60) {
    print("양호 2");
  } else {
    print("미달 2");
  }
  print("if~else if~else 종료 --------- 1");
  if (a >= 80) {
    print("우수 3");
  }
  //  else if (a >= 40) {  필터링은 순차 진행
  //   print("정상 3");
  // }
  else if (a >= 60) {
    print("양호 3");

    // 중첩 if문
    if (a % 2 == 0) {
      print("짝수");
    } else {
      print("홀수");
    }
  } else if (a >= 40) {
    print("정상 3");
  } else {
    print("미달 3");
  }
  print("if~else if~else 종료 --------- 2");

  /*
  // 평균을 이용하여  등급 을 출력하세요
 단 등급이 '우' 일 경우 모든 과목 점수가 80 이상이라면 '균등'을 추가로 출력해 주세요
 90 이상 : 수
 80 이상 : 우
 70 이상 : 미
 60 이상 : 양
 60 미만 : 가
     ex) 국어-89, 영어-88, 수학 -87 : 우(균등)
     ex) 국어-79, 영어-88, 수학 -87 : 우
   */
}

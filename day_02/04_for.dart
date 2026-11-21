void main() {
  // 초기값 : int i = 1
  // 조건 : i < 10
  // 증감수식 : i++

  int a = 100;
  for (int i = 1; i < 10; i++) {
    //  초기값  ; 조건   ; 증감
    // i : 반복변수 : 반복구간을 반복하여 실행해도 최초1회만 선언
    //                반복문을 모두 실행하여 끝날때 소멸

    a += i;
    int b = 1000; // 내부변수 : 반복구간 실행할때마다 선언,소멸 반복
    //선언
    b++;
    a += b;
    print("for 문실행 ${i} ${a} ${b}");

    // b 소멸
  }
  //print("for 문 종료 ${i}---- 1");
  print("for 문 종료 $a ---- 1");

  int j = 1;
  for (; j < 20; j += 2) {
    // 초기값 생략 - 외부변수 j로 사용
    print("for 실행 $j");
  }
  print("for 문 종료 $j ---- 2");

  for (j = 100; j < 500; j += 100) {
    // 초기값 : 외부변수 사용 , 초기값 100 대입
    print("for 실행 $j");
  }
  print("for 문 종료 $j ---- 3");

  int tot = 0;
  for (int i = 101; i <= 200; i++) {
    if (i % 2 == 0) {
      tot += i;
    }
    print("$i, $tot");
  }
  print("101 -> 200 => 1: $tot");

  tot = 0;
  for (int i = 102; i <= 200; i += 2) {
    tot += i;
    print("$i, $tot");
  }
  print("101 -> 200 => 2: $tot");

  tot = 0;
  for (int i = 101; i <= 200; i += 2) {
    i += i % 2;
    tot += i;
    print("$i, $tot");
  }
  print("101 -> 200 => 3: $tot");

  int c = 10;
  for (int c = 100; c < 110; c++) {
    // 외부변수와 반복변수 중첩하여 선언 가능
    print("for c : ${c}"); // 반복변수
  }
  print("for 종료 ${c} ----- 5"); // 외부변수

  for (int aa = 10, bb = 100, cc = 50; aa < 20; aa++, bb -= 10, cc *= 2) {
    // 반복변수 3개                ; 조건      ; 증감 3개
    print("$aa, $bb, $cc");
  }
}

// 101 -> 200 짝수들의 합

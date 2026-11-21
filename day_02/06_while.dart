import 'dart:io'; //콘솔에서 입출력 할 수 있는 라이브러리

void main() {
  int i = 0; //초기값
  //조건
  while (i < 10) {
    // 조건식만 넣을 수 있음
    // 초기값, 증감은 개발자가 임의로 처리

    print("while 실행 $i");
    i++; //증감
  }
  print("while 종료 $i----  1");

  // stdout.write("입력:");//개행없이 콘솔출력
  // String? ttt = stdin.readLineSync(); //문자열 받기
  // print("ttt : $ttt");

  i = 5;
  while (true) {
    print("$i 시작");
    if (i == 8) {
      break; // 현재 반복구문을 탈출
    }
    print("$i 끝");
    i++;
  }
  print("while 종료 $i----  2");
  int tot = 0;
  while (true) {
    stdout.write("입력:");
    String ttt = stdin.readLineSync()!; // ! 반드시 값이 존재한다
    if (ttt == "x") {
      break;
    }
    // int.parse(문자열);  문자열을 숫자로 변환
    // 문자열이 숫자가 아닌 경우 에러발생
    tot += int.parse(ttt);
  }
  print("while 종료 ${tot}----  2");
}

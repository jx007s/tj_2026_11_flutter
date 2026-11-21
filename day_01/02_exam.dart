void main() {
  /*
  
반, 성명, 국어, 영어, 수학, 총점을 선언하고 출력하세요
반, 성명, 국어, 영어, 수학 정보 입력후 처리

출력 형태
반 : 2
성명 : 홍길동
국어 : 67
영어 : 89
수학 : 78
총점 : ?
*/
  int ban = 2; //변수선언 및 초기화
  String name = "차은우";
  int kor = 88, eng; // 다중 변수 선언 - 자료형이 같다

  //print(eng); 선언만 하고 초기화 되지 않은 변수 호출불가
  eng = 82; //변수 대입 : 우항의 값을 복사하여 좌항 변수공간에 넣기
  //mat = 91; 선언되지 않은 변수 대입 불가
  var mat = 82; // var 자료형을 초기화 값으로 자동처리하여 변수선언
  int tot = kor + eng + mat; //변수대입(초기화) 시 다른 변수사용가능
  int avg = tot ~/ 3;
  String grade = avg >= 90
      ? "수"
      : avg >= 80
      ? "우"
      : avg >= 70
      ? "미"
      : avg >= 60
      ? "양"
      : "가";

  String grade2;
  if (avg >= 90) {
    grade2 = "수";
  } else if (avg >= 80) {
    grade2 = "우";
    if (kor >= 80 && eng >= 80 && mat >= 80) {
      grade2 += "(균등)";
    }
  } else if (avg >= 70) {
    grade2 = "미";
  } else if (avg >= 60) {
    grade2 = "양";
  } else {
    grade2 = "가";
  }

  String grade3;
  switch (avg ~/ 10) {
    case 10:
    case 9:
      grade3 = "수";
    case 8:
      grade3 = "우";
    case 7:
      grade3 = "미";
    case 6:
      grade3 = "양";
    default:
      grade3 = "가";
  }

  //print("반 : ban");
  //print(ban);       // 변수호출 - 변수 안의 값을 복사하여 사용
  print("반 : $ban"); // 문자열 안에 변수 호출 $변수명
  print("이름 : $name");
  print("국어 : $kor");
  print("영어 : $eng");
  print("수학 : $mat");
  print("총점 : $tot");
  print("평균 : $avg");
  print("등급 : $grade");
  print("등급2 : $grade2");
  print("등급3 : $grade3");
}

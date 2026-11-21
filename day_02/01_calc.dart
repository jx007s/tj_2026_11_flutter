void main() {
  print("1. 1항연산자 ============");
  int x = 3;
  print("-${x} : ${-x}"); // 음수처리
  x = x + 1;
  print("x = x + 1 : ${x}");
  x++; //  x = x + 1;  와 같은 의미  후치연산
  print("x++ : ${x}");
  x--; //  x = x - 1;  와 같은 의미
  print("x-- : ${x}");
  // x**;
  // x//;
  // x%%;
  ++x; //전치연산
  print("++x : ${x}");
  --x;
  print("--x : ${x}");
  print("x : ${x}");
  print("x++ : ${x++}");
  print("x : ${x}");
  print("++x : ${++x}");
  print("x : ${x}");

  int aa = 5, bb = 6, cc = 10, dd;

  dd = aa++ + ++cc - bb-- * --aa + aa++;
  /*
        5   +   11 -  6  *   5   +  5
        5   +   11  -   30    +  5
  aa    6                    5      6
  cc            11
  bb                 5
   */

  print("$aa, $bb, $cc, $dd");

  print("2.1 산술연산자 ============");
  // 항   : 숫자,  문자(더하기만 가능)
  // 결과 : 숫자,  문자
  int a = 15, b = 7;
  print("${a} + ${b} = ${a + b}");
  print("${a} - ${b} = ${a - b}");
  print("${a} * ${b} = ${a * b}");
  print("${a} / ${b} = ${a / b}"); // 결과가 실수(double 임)
  print("${a} ~/ ${b} = ${a ~/ b}"); // 결과가 정수(몫)
  print("${a} % ${b} = ${a % b}"); // 나머지

  String a1 = "정우성", b1 = "차은우";
  print("${a1} + ${b1} = ${a1 + b1}"); //문자열만 더하기 연산만 가능(문자열결합)
  // print("${a1} - ${b1} = ${a1 - b1}");
  // print("${a1} * ${b1} = ${a1 * b1}");
  // print("${a1} / ${b1} = ${a1 / b1}");
  // print("${a1} ~/ ${b1} = ${a1 ~/ b1}");
  // print("${a1} % ${b1} = ${a1 % b1}");

  // print("${a} + ${b1} = ${a + b1}");
  // print("${a} - ${b1} = ${a - b1}");
  // print("${a} * ${b1} = ${a * b1}");
  // print("${a} / ${b1} = ${a / b1}");
  // print("${a} ~/ ${b1} = ${a ~/ b1}");
  // print("${a} % ${b1} = ${a % b1}");

  print(3 + 4 * 5);
  print((3 + 4) * 5);

  print("2.2 비교연산자 ============");
  // 항   : 숫자,    문자,bool(==, !=)
  // 결과 : bool(true,false)

  a = 30;
  b = 20;

  print("$a >  $b : ${a > b}"); //초과
  print("$a >= $b : ${a >= b}"); //이상
  print("$a <= $b : ${a <= b}"); //이하
  print("$a <  $b : ${a < b}"); //미만
  print("$a == $b : ${a == b}"); //같다
  print("$a != $b : ${a != b}"); //다르다

  a1 = "장동건";
  b1 = "장서건";
  // 문자열 크기비교 불가
  // print("$a1 >  $b1 : ${a1 > b1}"); //초과
  // print("$a1 >= $b1 : ${a1 >= b1}"); //이상
  // print("$a1 <= $b1 : ${a1 <= b1}"); //이하
  // print("$a1 <  $b1 : ${a1 < b1}"); //미만
  print("$a1 == $b1 : ${a1 == b1}"); //같다
  print("$a1 != $b1 : ${a1 != b1}"); //다르다

  bool a2 = true, b2 = false;

  // bool 크기비교불가
  // print("$a2 >  $b2 : ${a2 > b2}"); //초과
  // print("$a2 >= $b2 : ${a2 >= b2}"); //이상
  // print("$a2 <= $b2 : ${a2 <= b2}"); //이하
  // print("$a2 <  $b2 : ${a2 < b2}"); //미만
  print("$a2 == $b2 : ${a2 == b2}"); //같다
  print("$a2 != $b2 : ${a2 != b2}"); //다르다

  // 다른자료형 같다,다르다 비교 가능
  print("$a == $b1 : ${a == b1}"); //같다
  print("$a == $b2 : ${a == b2}"); //같다
  print("$a1 == $b2 : ${a1 == b2}"); //같다

  print("2.3 논리연산자 ============");
  // 항   : bool
  // 결과 : bool(true,false)

  a2 = false;
  b2 = false;
  print("$a2 && $b2 : ${a2 && b2}"); //and - 2개 항이 모두 true : true
  print("$a2 || $b2 : ${a2 || b2}"); //or - 1개 항이라도 true : true
  print("!$a2 : ${!a2}"); // not - 1항 연산자 , 항을 부정

  int age = 52;
  String color = "검정";

  // bool ageChk = age <= 30;
  // bool ccChk = color == "빨강";
  // print("and : ${ageChk && ccChk}");
  // print("or : ${ageChk || ccChk}");

  print("and : ${age <= 30 && color == "빨강"}");
  print("or  : ${age <= 30 + 30 || color == "빨강"}");

  print("2.4 대입할당연산자 ============");
  // 항   : 숫자, 문자, bool
  // 결과 : 숫자, 문자, bool

  x = 3;
  print("x : $x");
  x = x + 5;
  print("x = x + 5 : ${x}");
  x += 5; //x = x + 5;
  print("x += 5 : ${x}");
  x -= 2;
  print("x -= 2 : ${x}");
  x *= 3;
  print("x *= 3 : ${x}");
  x ~/= 4;
  print("x ~/= 4 : ${x}");
  x %= 5;
  print("x %= 5 : ${x}");

  print("3 조건 연산자 ============");
  // 항   : bool, 참일때값, 거짓일때값
  // 리턴 : 참일때값, 거짓일때값

  print(true ? "참이지롱1" : "거짓부렁1"); // 1항 true - 2항 리턴
  print(false ? "참이지롱2" : "거짓부렁2"); // 1항 false - 3항 리턴

  /*
  우선순위
  ()
  ++ -- !
  * / ~/ %
  + -
  >, >=, <,<=, ==, !=
  &&, ||
  = += -= *= /= ~/= %=
   */
}

void main() {
  int i = 10;
  while (i < 3) {
    print("while 실행 $i");
    i++;
  }
  print("while 종료 --------");
  // while, for 조건에 맞지 않으면 실행 안함
  // do~while 조건에 맞지 않아도 최초1회 실행
  i = 10;
  do {
    print("do~while 실행 $i");
    i++;
  } while (i < 3);
  print("do~while 종료 --------");
}

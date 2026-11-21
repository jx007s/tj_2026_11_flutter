void main() {
  for (int h = 1; h <= 12; h++) {
    print("[[[$h 시]]]");
    for (int m = 0; m < 60; m++) {
      print("$h : $m");
    }
    //print("$h : $m");
  }

  for (int dan = 2; dan < 10; dan++) {
    print("[[[$dan 단]]]");
    for (int gob = 1; gob < 10; gob++) {
      print("$dan x $gob = ${dan * gob}");
    }
  }
}

import 'dart:io';
import 'dart:math';

void main() {
  Random rd = Random();

  Set<int> bingo = {};

  while (bingo.length < 25) {
    bingo.add(rd.nextInt(100) + 1);
  }
  //print(bingo);

  int cnt = 0;
  for (var e in bingo) {
    stdout.write("$e\t");
    if (++cnt % 5 == 0) {
      print("");
    }
  }
}

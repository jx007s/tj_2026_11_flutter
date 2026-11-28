void main() {
  List<int> jum = [88, 77, 44, 55, 99, 76, 83, 45];
  int cnt = 0, tot = 0;
  for (var e in jum) {
    if (e >= 70) {
      cnt++;
      tot += e;
      print("$e, $cnt, $tot");
    }
  }
  print("합격자: $cnt, 평균 :${tot ~/ cnt}");

  cnt = 0;
  tot = 0;

  for (var i = 0; i < jum.length; i++) {
    if (jum[i] >= 70) {
      cnt++;
      tot += jum[i];
      print("$i, ${jum[i]}, $cnt, $tot");
    }
  }

  print("합격자: $cnt, 평균 :${tot ~/ cnt}");
}

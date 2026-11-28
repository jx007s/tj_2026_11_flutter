void main() {
  // 각 번호가 몇번씩 나왔는가
  List<int> hits = [3, 5, 8, 3, 5, 7, 2, 3, 6, 1, 3, 8];

  Map<int, int> ret = {};
  for (var h in hits) {
    int cnt = 1;
    if (ret.containsKey(h)) {
      //결과map에 이미 등록되어 있다면
      cnt += ret[h]!;
    }
    ret[h] = cnt; // 선수 = 1 대입 or 추가
    //print("$h : ${ret}");
  }

  var kks = ret.keys.toList();
  kks.sort();
  for (var k in kks) {
    String star = "";
    for (var i = 0; i < ret[k]!; i++) {
      star+="*";
    }
    print("$k : ${star}");
  }
}

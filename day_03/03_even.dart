void main() {
  List<int> ori = [78, 12, 45, 67, 78, 12, 67, 5, 78, 12, 56, 78, 78, 9];
  List<int> ret = [];
  for (var o in ori) {
    if (o % 2 == 0 && !ret.contains(o)) {
        ret.add(o);
      
    }
  }
  print(ret);
  // ---- 짝수 중 같은 값은 한번만 들어간 리스트를 구현하세요
}

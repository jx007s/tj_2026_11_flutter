void main() {
  Map<String, String> mm = {
    "호랑이": "포유류",
    "악어": "파충류",
    "사자": "포유류",
    "오타니": "이도류",
    "호랑이": "고양이과", // 호랑이 : 고양이과 로 대입
    "독수리": "조류",
    "표범": "포유류",
  };
  print("mm : $mm");
  print("mm[0] : ${mm[0]}"); //null
  print("mm['호랑이'] : ${mm['호랑이']}");
  mm['독수리'] = '이글스'; //대입
  mm['상어'] = '어류'; //추가
  print("mm : $mm");

  // for (var e in mm) {
  //   print(e);
  // }
  //for(var (k, v) in mm){}

  mm.forEach((k, v) {
    // k : key , v : value
    print("$k ==> $v");
  });

  Map<String, String> mm2 = {"티라노": "육식공룡", "브라키오": "초식공룡", "악어": "유사공룡"};
  mm.addAll(mm2);
  print("addAll(mm2) : $mm");
  print("containsKey('호랑이') : ${mm.containsKey("호랑이")}");
  print("containsKey('코끼리') : ${mm.containsKey("코끼리")}");
  print("containsValue(\"이도류\") : ${mm.containsValue("이도류")}");
  print("containsValue(\"삼도류\") : ${mm.containsValue("삼도류")}");
  mm.remove("독수리");
  print("remove(\"독수리\") : $mm");
  mm.remove("가오리");
  print("remove(\"가오리\") : $mm");
  print("length : ${mm.length}");

  Set<String> kks = mm.keys.toSet();
  print("keys.toSet() : $kks");
  List<String> vvs = mm.values.toList();
  print("values.toList() : $vvs");

  List<String> kkArr = kks.toList();
  kkArr.sort();

  for (var k in kkArr) {
    print("$k : ${mm[k]}");
  }

  print("isEmpty : ${mm.isEmpty}");
  mm.clear();
  print("isEmpty : ${mm.isEmpty}");
}

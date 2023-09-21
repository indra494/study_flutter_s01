void main() {

  /* 스트림 (데이터의 흐름을 표현) */
  var stream = Stream.fromIterable([1,2,3]);

  // 실시간으로 데이터 변경되는게 하나하나씩 들어옴
  stream.listen((event) {
    print(event);
  });

}
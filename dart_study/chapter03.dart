void main() {

  /* 연산자 ?? (null이면 오른쪽 수행) */
  String? str;

  str = str ?? 'Hello';
  str ??= 'Hello2'; // 위와 동일한 결과

  /* 삼항연산자 */
  bool isClear = true;
  var weather = isClear ? '맑음' : '흐림';
  print(weather);

  /* cascade 연산자 (연결해서 작성) */
  var paint = Paint();
  paint.draw = 1;
  paint.color = 2;
  paint.stroke = 3;

  var paint2 = Paint()
  ..draw = 2
  ..color = 3
  ..stroke = 4;

  /* 타입 캐스트 */
  num i  = 10;
  int ii = i as int;

  num d = 11.5;
  double dd = d as double;

}

class Paint {
  int draw = 0;
  int color = 0;
  int stroke = 0;
}
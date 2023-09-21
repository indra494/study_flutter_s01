/* 2. import */
import 'dart:async' as async; // 별칭
import 'dart:async' hide async; // 특정한것만 보이게
import 'dart:async' show async; // 특정한것만 숨기기

/* 2. 제너릭 */
class Box<T> {
  T value;

  Box(this.value);

  T getValue() {
    return value;
  }
}

/* 3. future (비동기처리) 함수 생성하기 */
Future<String> hello() async {
  await Future.delayed(Duration(seconds: 3));
  return 'Hello';
}

void main() {
  var box = Box<int>(10);
  var Box3 = Box<String>('ddd');

  hello().then((value) => print(value));

  /* 4.future (비동기처리) */
  var delay = Future.delayed(Duration(seconds: 3));

  // return 있는 경우 (then)
  delay
    .then((value) => print('3초지남'))
    .catchError((e) => print(e));

  // return 없는 경우 (whenComplete)
  delay
      .whenComplete(() => print('3초지남'))
      .catchError((e) => print(e));




}

void main() {
  print(sum(10, 20));
  print(minus());
  print(minus(a: 10));
  print(minus(b: 20));
  print(sum2(10,20,30));
  print(max(5, 8, (a, b) => a * b));
  print(
    max2(
      5,
      8,
      callback: (a, b) {
        return a * b;
      },
  ));
}

/* 함수 생성 */
int sum(int a, int b) {
  return a + b;
}

/* 함수 생성(네임드파라메터) */
int minus({int a = 0, int b = 0}) {
  return a - b;
}

/* 함수 생성(람다식) */
int sum2(int a, int b, int c) => a + b + c;

/* 함수 생성 (함수를 파라메터로 받을수 있음) */
int max(int a, int b, Function(int, int) callback) {
  return callback(a, b);
}

/* 함수 생성 (함수를 파라메터로 받을수 있음) */
int max2(int a, int b, {required Function(int, int) callback}) {
  return callback(a, b);
}
void main() {
  /* 1. 다트 타입 */
  int num1 = 10;
  double num2 = 3.0;
  String str = 'hello';
  bool isTrue = true;
  num num3 = 10;
  num num4 = 10.0;

  /* 2. 파일 타입 체크 */
  print(num1 is int);
  print(num2 is int);

  /* 3. 파일 타입 확인 */
  print(num1.runtimeType);

  /* 4. 타입추론 */
  // 컴파일 시 타입 결정
  var i = 10;
  var d = 19.2;
  var str2 = 'hello';

  // dynamic은 (런타임 타입 결정, 특별한 경우 빼고는 사용 x)
  dynamic a = 10;
  dynamic b = 10.0;

  /* 5. 상수 (const를 사용할 경우 성능상에 이점이 있음) */
  const int age = 10; // const는 컴파일시 결정
  final String name = '상수'; // final은 런타임시 결정

  /* 6. null safety */
  int? age2; // nullable (기본적으로 null이 들어가있음)
  String? name2;
  String result = name2!;  // nullable type과 nullable이 아닌 type은 다른 형태임. 같은 형으로 맞추기 위해서 마지막에 !를 붙일 수 있다.

  // 해당방법을 추천
  if(name2 != null) {
    String result2 = name2;
  }

}
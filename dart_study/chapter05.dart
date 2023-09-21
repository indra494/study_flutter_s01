void main() {
  /* 1. 리스트 */
  List<int> items = [1,2,3];
  print(items[0]);
  print(items.length);
  print(items.isEmpty);
  print(items.first);
  print(items.last);

  for(var i = 0; i < items.length; i++) {
    print(items[i]);
  }

  for(int item in items) {
    print(item);
  }

  items.forEach((element) => print(element) );

  items.forEach(print);

  // 리스트 스프레드 연산자
  List<int> addItems = [...items,9,10];

  // 리스트 안에 if 문
  bool isTrue = false;
  List<int> ifItrems = [1,2,3,if (isTrue) 5];

  /* 2. map */
  // map 인경우 dynamic을 자주 사용함
  // Map<String, Object?> 로 선언해도됨.
  Map<String, dynamic> john = {
    'name' : ' john',
    'age' : 40,
  };

  john['name'] = 'Peter';

  print(john['name']);
  print(john.keys);
  print(john.entries);
  print(john.values);

  for(var entry in john.entries) {
    print('${entry.key}, ${entry.value}');
  }

}
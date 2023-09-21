void main() {

  // 클래스 생성시 New Point(10,20); 과 같이 New를 사용해도 되지만, 다트에서는 일반적으로 New를 생략해서 사용한다.
  var point1 = Point(10,20);
  point1.draw();
  point1.y = 50;

  print(Point.glabalVar);
  Point.globalFunction();

  Point point2 = Point.fromMap({'x' : 10, 'y': 10});
}

/* 1. 클래스밖에 함수 생성(어디서든 사용가능) */
void test01() {
  print(test01);
}

/* 2. 클래스밖에 변수 선언(어디서든 사용가능) */
int gTest01 = 0;
int gTtest02 = 0;


/* 3. 클래스 생성 */
class Point {

  static String glabalVar = 'test';
  static void globalFunction() {
    print('globalFunction');
  }

  // public
  int x = 0;
  int y = 0;
  int? z;
  late int a; // 늦은초기화(생성자에 의해 초기화할때 사용)

  // private
  int _xx = 0;
  int _yy = 0;

  // 생성자
  Point(this.x, this.y, [this.z]);

  void move() {
    print('move');
  }

  void draw() {
    test01();
    print('draw');
  }

  /* 4. named construct */
  Point.fromMap(Map map) {
    _xx = map['x'];
    _yy = map['y'];
  }

}
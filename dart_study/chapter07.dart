void main() {
  var dog = Dog();
  dog.walk();

  var cat = Cat();
  cat.walk();

  SuperHero superHero = SuperHero();
  Hero hero = SuperHero();
  Moveable moveable = SuperHero();
  Drawable drawable = SuperHero();
}

/* 상속(추상클래스) */
abstract class Animal {
  void walk() {
    print('walk');
  }
}

class Dog extends Animal {
}

class Cat extends Animal {
  @override
  void walk() {
    print('cat walk');
  }
}

/* 다중상속 */
mixin Moveable {
  int i = 0;
  void move() {
    print('move');
  }
}

mixin Drawable {
  void draw() {
    print('draw');
  }
}

class Hero {}

class SuperHero extends Hero with Moveable, Drawable {

}

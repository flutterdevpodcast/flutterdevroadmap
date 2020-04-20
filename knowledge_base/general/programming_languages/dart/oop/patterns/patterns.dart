// inherit example
class GameObject {
  int x, y, z;
  double speed;
  double velocity;

  void rotate() {}

  void scale() {}

  void move() {}
}

class Cube extends GameObject {
  int width, height;
}

class Sphere extends GameObject {
  int radius;
}

// polymorphism example
class CanonBall extends Sphere {
  final int damage = 10;

  void explosion() {
    ///пушечное ядро взрываться
  }
}

class UraniumCannonBall extends CanonBall {
  @override
  int get damage => 1000;

  void explosion() {
    super.explosion();

    ///урановое пушечное ядро  взрывается очень сильно!
  }
}

// incapsulation demo
class Highwayman {
  double _fuel;

  get fuel => _fuel;

  //публичный метод
  //вызывается где-то из вне
  void goToWasteland() {
    _fuelController();
    _fuelRegulator();
  }

  // внутренний метод
  // управляющим объектам нет нужды знать как устроен топливный контроллер
  //(чтобы не сломать)
  void _fuelController() {
    /// Без топливного контроллера машина не заведется
  }

  void _fuelRegulator() {
    /// Топливный регулятор уменьшает расход топлива при езде
  }
}

//abstract class example
abstract class Animal {
  String breed;

  void eat();

  void sleep();

  void hunt();

  @override
  String toString() {
    return "Животное породы: $breed";
  }
}

class Dog extends Animal {
  @override
  void eat() {
    print("ест кости");
  }

  @override
  void hunt() {
    print("охотится на кошек");
  }

  @override
  void sleep() {
    print("спит в конуре");
  }
}

class Touch {
  // координата касания х
  double touchX;

  // координата касания y
  double touchY;

  // количество точек соприкосновения
  int pointCount;
}

//interface example
abstract class TouchEventListener {
  void onTouchDown(Touch touch);

  void onTouchUp(Touch touch);

  void onTouchDrag(Touch touch);
}

class TouchHandler {
  TouchEventListener touchEventListener;

  TouchHandler(this.touchEventListener);

  void touchDetect() {
    // низкоуровневая реализация касаний...
    // когда касание определено, срабатывает вызов интерфейса
    touchEventListener.onTouchDown(Touch());
    touchEventListener.onTouchUp(Touch());
  }
}

class MainScreen implements TouchEventListener {
  MainScreen() {
    TouchHandler(this);
  }

  @override
  void onTouchDown(Touch touch) {
    print("Палец коснулся экрана в точке ${touch.touchX} ${touch.touchY}");
  }

  @override
  void onTouchDrag(Touch touch) {
    // TODO: implement onTouchDrag
  }

  @override
  void onTouchUp(Touch touch) {
    // TODO: implement onTouchUp
  }
}

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

class SnowBall extends Sphere {
  int damage = 10;
}

void main() {
  var cube = Cube();
  var sphere = Sphere();
  var snowball = SnowBall();

  if (cube is Cube) {
    print("cube это Cube");
  }
  if (cube is GameObject) {
    print("cube это GameObject");
  }
  if (snowball is Cube) {
    print("snowball это Cube");
  } else {
    print("snowball это не Cube");
  }

  if (snowball is Sphere) {
    print("snowball это Sphere");
  }

  GameObject snowSphere = SnowBall();

  var snowBall_1 = snowSphere as SnowBall;
  SnowBall snowBall_2 = snowSphere;

  snowBall_1.damage = 2;
  snowBall_2.damage = 3;
}

// polymorphism example
class CanonBall extends Sphere {
  int damage = 10;

  void explosion() {
    ///пушечное ядро взрываться
  }
}

class UraniumCannonBall extends CanonBall {
  @override
  int get damage => 1000;

  @override
  void explosion() {
    ///урановое пушечное ядро  взрывается очень сильно!
  }
}

// incapsulation demo
class Highwayman {
  double _fuel;

  get fuel => _fuel;

  void goToWasteland() {
    _fuelController();
    _fuelRegulator();
  }

  void _fuelController() {
    /// Без топливного контроллера машина не заведется
  }

  void _fuelRegulator() {
    /// Топливный регулятор уменьшает расход топлива при езде
  }
}

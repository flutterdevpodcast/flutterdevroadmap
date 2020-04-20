//mixin example

//Общий класс для всех машин
abstract class Car {
  void go();

  void turn();

  void stop();
}

// городские машины
abstract class CityCar extends Car {}

// спорткары
abstract class SportCar extends Car with Nitro {}

// грузовики
abstract class Truck extends Car {}

// На водителя нельзя установить нитроускоритель
//abstract class Driver with Nitro{}

// миксин "Нитро"
// нитроускорители не могут работать сами по себе
// поэтому необходимо использовать слово 'mixin'
// чтобы запретить создания экземпляра класса
//
// нитроускоритель можно установить только в автомобиль
mixin Nitro on Car{
  void nitroBoost() {
    print("go!!!!!!");
  }
}

class NissanSkyline extends SportCar {
  @override
  void go() {}

  @override
  void stop() {}

  @override
  void turn() {}
}

void mixinDemo() {
  // так не получится
  // var nitro = Nitro();

  // так получится
  // нитроускроитель установлен в спорткар
  // его можно использовать
  var skyline = NissanSkyline();
  skyline.nitroBoost();
}

// Пример миксинов как отдельных объектов

// Плазменную пушку можно использовать отдельно
class PlasmaRifle {
  void aim() {}

  void fire() {}
}

// А можно установить на плечо хищнику
class Predator with PlasmaRifle {
  void attack() {
    aim();
    fire();
  }
}

void classMixinDemo() {
  var plasmaRifle = PlasmaRifle();
  plasmaRifle.aim();
  plasmaRifle.fire();
  var predator = Predator();
  predator.attack();
}

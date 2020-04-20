// class example
import 'dart:typed_data';

class Player {
  String nickName = "default_name";
  String className = "no class";
  String race = "no race";
  int health;
  int mana;
  int age;
  double stamina;
  double experience;
  int damage;

  bool get isAdult {
    if (age > 18) {
      return true;
    } else {
      return false;
    }
  }

  double _honor;

  set honor(double value) {
    _honor = experience / 2;
  }

  Player({
    this.nickName,
    this.className,
    this.race,
    this.health,
    this.mana,
    this.stamina,
    this.experience,
    this.damage,
    this.age,
  });

  void attack() {
    print("Игрок атакует");
  }

  void run() {
    print("Игрок бежит");
  }

  void jump() {
    print("Игрок прыгает");
  }

  void rest() {
    print("Игрок отдыхает");
  }
}

class GameMaster extends Player {}

void main() {
  Player orcWarrior = Player(
    nickName: "thrall",
    className: "warrior",
    race: "orc",
    health: 200,
    mana: 10,
    stamina: 500,
    experience: 10000,
    damage: 50,
  );

  print("Какой урон у орка? ${orcWarrior.damage}");
  print("Левел ап у орка,здоровье повышается на 20 едениц");
  orcWarrior.health += 20;

  Player humanRouge = Player(
    nickName: "altair",
    className: "rouge",
    race: "human",
    health: 100,
    mana: 50,
    stamina: 200,
    experience: 5000,
    damage: 100,
  );

  Player elfMage = Player(
    nickName: "Luna",
    className: "mage",
    race: "elf",
    health: 50,
    mana: 500,
    stamina: 50,
    experience: 10000,
    damage: 150,
  );
}

//named contructor sample
class File {
  int dataLenght;
  String fileName;

  Uint8List fileContent;

  File(this.fileName) {
    //load file from disk
  }

  File.fromInternet(String url) {
    //load file from internet
  }

  File.fromCamera() {
    // get file from camera
  }
}

class Enemy {
  final int health;
  final int damage;

  Enemy(
    this.health,
    this.damage,
  );

  Enemy.fromSpawn(this.health, this.damage) {}
}

class Goblin extends Enemy {
  Goblin(
    int health,
    int damage,
    String goblinSpecialSkill,
  ) : super(health, damage);

  Goblin.fromCave() : super(10, 10) {}
}

class Orc extends Enemy {
  Orc.fromBarrack(int health, int damage) : super(health, damage);
}

class OrcGrunt extends Orc {
  final int criticalStrikeDamage;

  OrcGrunt(int health, int damage)
      : criticalStrikeDamage = damage * 2,
        super.fromBarrack(health, damage) {
    //Орк-Громила атакует врагов критическим уроном, который в 2 раза больше обычного
    attack(criticalStrikeDamage);
  }

  void attack(int damage) {}
}

class Image {
  int imageWidth;
  int imageHeight;

  Image(
    this.imageWidth,
    imageHeight,
  );

  Image.fromCamera() : this(640, 480);

  Image.fromDisk() : this(1024, 1024);
}

const base = Base("test");

class Base {
  final String name;

  const Base(this.name);

  static final base = Base("test");
}

class FabricObject {
  String name;
  String surname;

  factory FabricObject() {
    return FabricObject.custom("fabric default name", "fabric default surname");
  }

  FabricObject.custom(
    this.name,
    this.surname,
  );
}

var fabricDefaultObject = FabricObject();

void test() {
  var fabricDefaultObject = FabricObject();
  var fabricCustomObject = FabricObject.custom("custom", "object");
}

abstract class IGreetable {
  String sayHello(String name);

  factory IGreetable() {
    return Greeter();
  }
}

class Greeter implements IGreetable {
  sayHello(name) {
    return "Hello $name";
  }
}

class MathUtil {
  static double average(List<num> nums) {
    double sum = 0;
    for (final num in nums) {
      sum += num;
    }
    return sum / nums.length;
  }
}

void test1() {
  MathUtil.average([1, 2, 3, 4, 5]);
}

void test2() {
  MathUtil.average([1, 2, 3]);
}

void test3() {
  MathUtil.average([1, 2, 3, 4, 5, 6, 7, 8]);
}

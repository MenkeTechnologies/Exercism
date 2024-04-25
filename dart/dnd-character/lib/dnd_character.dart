import 'dart:math';

class DndCharacter {
  late int strength;
  late int constitution;
  late int dexterity;
  late int intelligence;
  late int wisdom;
  late int charisma;
  late int hitpoints;

  static int modifier(int score) {
    return ((score - 10) / 2).floor();
  }

  static int ability() {
    var random = Random();
    var numbers = List.generate(4, (_) => random.nextInt(6) + 1).toList();
    numbers.sort((a, b) => a - b);
    return numbers.take(3).fold(0, (sum, score) => sum + score);
  }

  DndCharacter.create() {
    strength = ability();
    constitution = ability();
    dexterity = ability();
    intelligence = ability();
    wisdom = ability();
    charisma = ability();
    hitpoints = 10 + modifier(constitution);
  }
}

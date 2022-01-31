import 'dart:math';

class ArmstrongNumbers {
  bool isArmstrongNumber(int num) =>
      num.toString()
          .split("")
          .map((e) => pow(int.parse(e), num.toString().length))
          .reduce((value, element) => value + element) ==
      num;
}

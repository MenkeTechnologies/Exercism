import 'package:minesweeper/minesweeper.dart';
import 'package:test/test.dart';

void main() {
  group("MineSweeper: Simple cases - ", simpleTestCases);
  group("MineSweeper: Normal cases - ", normalTestCases);
  group("MineSweeper: Advanced cases - ", advancedTestCases);
}

void simpleTestCases() {
  test("no rows", () {
    List<String> result = new Minesweeper([]).annoted;
    expect(result, equals(<String>[]));
  });

  test("no columns", () {
    List<String> result = new Minesweeper([""]).annoted;
    expect(result, equals([""]));
  });

  test("no mines", () {
    List<String> result = new Minesweeper(["   ", "   ", "   "]).annoted;
    expect(result, equals(["   ", "   ", "   "]));
  });

  test("board with only mines", () {
    List<String> result = new Minesweeper(["***", "***", "***"]).annoted;
    expect(result, equals(["***", "***", "***"]));
  });
}

void normalTestCases() {
  test("mine surrounded by spaces", () {
    List<String> result = new Minesweeper(["   ", " * ", "   "]).annoted;
    expect(result, equals(["111", "1*1", "111"]));
  });

  test("space surrounded by mines", () {
    List<String> result = new Minesweeper(["***", "* *", "***"]).annoted;
    expect(result, equals(["***", "*8*", "***"]));
  });
}

void advancedTestCases() {
  test("horizontal line", () {
    List<String> result = new Minesweeper([" * * "]).annoted;
    expect(result, equals(["1*2*1"]));
  });

  test("horizontal line, mines at edges", () {
    List<String> result = new Minesweeper(["*   *"]).annoted;
    expect(result, equals(["*1 1*"]));
  });

  test("vertical line", () {
    List<String> result = new Minesweeper([" ", "*", " ", "*", " "]).annoted;
    expect(result, equals(["1", "*", "2", "*", "1"]));
  });

  test("vertical line, mines at edges", () {
    List<String> result = new Minesweeper(["*", " ", " ", " ", "*"]).annoted;
    expect(result, equals(["*", "1", " ", "1", "*"]));
  });

  test("cross", () {
    List<String> result = new Minesweeper(["  *  ", "  *  ", "*****", "  *  ", "  *  "]).annoted;
    expect(result, equals([" 2*2 ", "25*52", "*****", "25*52", " 2*2 "]));
  });

  test("large board", () {
    List<String> result = new Minesweeper([" *  * ", "  *   ", "    * ", "   * *", " *  * ", "      "]).annoted;
    expect(result, equals(["1*22*1", "12*322", " 123*2", "112*4*", "1*22*2", "111111"]));
  });
}

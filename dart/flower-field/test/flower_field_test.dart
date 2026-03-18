import 'package:flower_field/flower_field.dart';
import 'package:test/test.dart';

void main() {
  group('Flower Field', () {
    test('no rows', () {
      final result = FlowerField(<String>[]).annotated;
      expect(result, equals(<String>[]));
    }, skip: false);

    test('no columns', () {
      final result = FlowerField(<String>['']).annotated;
      expect(result, equals(<String>['']));
    });

    test('no flowers', () {
      final result = FlowerField(<String>['   ', '   ', '   ']).annotated;
      expect(result, equals(<String>['   ', '   ', '   ']));
    });

    test('garden full of flowers', () {
      final result = FlowerField(<String>['***', '***', '***']).annotated;
      expect(result, equals(<String>['***', '***', '***']));
    });

    test('flower surrounded by spaces', () {
      final result = FlowerField(<String>['   ', ' * ', '   ']).annotated;
      expect(result, equals(<String>['111', '1*1', '111']));
    });

    test('space surrounded by flowers', () {
      final result = FlowerField(<String>['***', '* *', '***']).annotated;
      expect(result, equals(<String>['***', '*8*', '***']));
    });

    test('horizontal line', () {
      final result = FlowerField(<String>[' * * ']).annotated;
      expect(result, equals(<String>['1*2*1']));
    });

    test('horizontal line, flowers at edges', () {
      final result = FlowerField(<String>['*   *']).annotated;
      expect(result, equals(<String>['*1 1*']));
    });

    test('vertical line', () {
      final result = FlowerField(<String>[' ', '*', ' ', '*', ' ']).annotated;
      expect(result, equals(<String>['1', '*', '2', '*', '1']));
    });

    test('vertical line, flowers at edges', () {
      final result = FlowerField(<String>['*', ' ', ' ', ' ', '*']).annotated;
      expect(result, equals(<String>['*', '1', ' ', '1', '*']));
    });

    test('cross', () {
      final result = FlowerField(<String>['  *  ', '  *  ', '*****', '  *  ', '  *  ']).annotated;
      expect(result, equals(<String>[' 2*2 ', '25*52', '*****', '25*52', ' 2*2 ']));
    });

    test('large gardem', () {
      final result = FlowerField(<String>[' *  * ', '  *   ', '    * ', '   * *', ' *  * ', '      ']).annotated;
      expect(result, equals(<String>['1*22*1', '12*322', ' 123*2', '112*4*', '1*22*2', '111111']));
    });
  });
}

import 'package:resistor_color/resistor_color.dart';
import 'package:test/test.dart';

final resistorColor = ResistorColor();

void main() {
  group('ResistorColor', () {
    group('Color codes', () {
      test('Black', () {
        final int result = resistorColor.colorCode('black');
        expect(result, equals(0));
      }, skip: false);

      test('White', () {
        final int result = resistorColor.colorCode('white');
        expect(result, equals(9));
      });

      test('Orange', () {
        final int result = resistorColor.colorCode('orange');
        expect(result, equals(3));
      });
    });

    test('Colors', () {
      final List<String> result = resistorColor.colors;
      expect(
          result,
          equals(<String>[
            'black',
            'brown',
            'red',
            'orange',
            'yellow',
            'green',
            'blue',
            'violet',
            'grey',
            'white',
          ]));
    });
  });
}

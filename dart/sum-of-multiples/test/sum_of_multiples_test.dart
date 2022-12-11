import 'package:sum_of_multiples/sum_of_multiples.dart';
import 'package:test/test.dart';

void main() {
  final sumOfMultiples = SumOfMultiples();

  group('SumOfMultiples', () {
    test('no multiples within limit', () {
      final result = sumOfMultiples.sum(<int>[3, 5], 1);
      expect(result, equals(0));
    }, skip: false);

    test('one factor has multiples within limit', () {
      final result = sumOfMultiples.sum(<int>[3, 5], 4);
      expect(result, equals(3));
    });

    test('more than one multiple within limit', () {
      final result = sumOfMultiples.sum(<int>[3], 7);
      expect(result, equals(9));
    });

    test('more than one factor with multiples within limit', () {
      final result = sumOfMultiples.sum(<int>[3, 5], 10);
      expect(result, equals(23));
    });

    test('each multiple is only counted once', () {
      final result = sumOfMultiples.sum(<int>[3, 5], 100);
      expect(result, equals(2318));
    });

    test('a much larger limit', () {
      final result = sumOfMultiples.sum(<int>[3, 5], 1000);
      expect(result, equals(233168));
    });

    test('three factors', () {
      final result = sumOfMultiples.sum(<int>[7, 13, 17], 20);
      expect(result, equals(51));
    });

    test('factors not relatively prime', () {
      final result = sumOfMultiples.sum(<int>[4, 6], 15);
      expect(result, equals(30));
    });

    test('some pairs of factors relatively prime and some not', () {
      final result = sumOfMultiples.sum(<int>[5, 6, 8], 150);
      expect(result, equals(4419));
    });

    test('one factor is a multiple of another', () {
      final result = sumOfMultiples.sum(<int>[5, 25], 51);
      expect(result, equals(275));
    });

    test('much larger factors', () {
      final result = sumOfMultiples.sum(<int>[43, 47], 10000);
      expect(result, equals(2203160));
    });

    test('all numbers are multiples of 1', () {
      final result = sumOfMultiples.sum(<int>[1], 100);
      expect(result, equals(4950));
    });

    test('no factors means an empty sum', () {
      final result = sumOfMultiples.sum(<int>[], 10000);
      expect(result, equals(0));
    });

    test('the only multiple of 0 is 0', () {
      final result = sumOfMultiples.sum(<int>[0], 1);
      expect(result, equals(0));
    });

    test('the factor 0 does not affect the sum of multiples of other factors', () {
      final result = sumOfMultiples.sum(<int>[3, 0], 4);
      expect(result, equals(3));
    });

    test('solutions using include-exclude must extend to cardinality greater than 3', () {
      final result = sumOfMultiples.sum(<int>[2, 3, 5, 7, 11], 10000);
      expect(result, equals(39614537));
    });
  });
}

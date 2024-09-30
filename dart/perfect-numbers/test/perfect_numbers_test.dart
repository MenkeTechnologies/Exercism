import 'package:perfect_numbers/perfect_numbers.dart';
import 'package:test/test.dart';

void main() {
  final perfectNumbers = PerfectNumbers();

  group('PerfectNumbers', () {
    group('Perfect numbers', () {
      test('Smallest perfect number is classified correctly', () {
        final result = perfectNumbers.classify(6);
        expect(result, equals(Classification.perfect));
      }, skip: false);

      test('Medium perfect number is classified correctly', () {
        final result = perfectNumbers.classify(28);
        expect(result, equals(Classification.perfect));
      }, skip: false);

      test('Large perfect number is classified correctly', () {
        final result = perfectNumbers.classify(33550336);
        expect(result, equals(Classification.perfect));
      }, skip: false);
    });

    group('Abundant numbers', () {
      test('Smallest abundant number is classified correctly', () {
        final result = perfectNumbers.classify(12);
        expect(result, equals(Classification.abundant));
      }, skip: false);

      test('Medium abundant number is classified correctly', () {
        final result = perfectNumbers.classify(30);
        expect(result, equals(Classification.abundant));
      }, skip: false);

      test('Large abundant number is classified correctly', () {
        final result = perfectNumbers.classify(33550335);
        expect(result, equals(Classification.abundant));
      }, skip: false);
    });

    group('Deficient numbers', () {
      test('Smallest prime deficient number is classified correctly', () {
        final result = perfectNumbers.classify(2);
        expect(result, equals(Classification.deficient));
      }, skip: false);

      test('Smallest non-prime deficient number is classified correctly', () {
        final result = perfectNumbers.classify(4);
        expect(result, equals(Classification.deficient));
      }, skip: false);

      test('Medium deficient number is classified correctly', () {
        final result = perfectNumbers.classify(32);
        expect(result, equals(Classification.deficient));
      }, skip: false);

      test('Large deficient number is classified correctly', () {
        final result = perfectNumbers.classify(33550337);
        expect(result, equals(Classification.deficient));
      }, skip: false);

      test('Edge case (no factors other than itself) is classified correctly',
          () {
        final result = perfectNumbers.classify(1);
        expect(result, equals(Classification.deficient));
      }, skip: false);
    });

    group('Invalid inputs', () {
      test('Zero is rejected (as it is not a positive integer)', () {
        expect(() => perfectNumbers.classify(0), throwsArgumentError);
      }, skip: false);

      test('Negative integer is rejected (as it is not a positive integer)',
          () {
        expect(() => perfectNumbers.classify(-1), throwsArgumentError);
      }, skip: false);
    });
  });
}

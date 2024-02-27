import 'package:protein_translation/protein_translation.dart';
import 'package:test/test.dart';

void main() {
  final translator = ProteinTranslation();

  test('Empty RNA sequence results in no proteins', () {
    final result = translator.translate("");
    expect(result, equals([]));
  });

  test('Methionine RNA sequence', () {
    final result = translator.translate("AUG");
    expect(result, equals(["Methionine"]));
  });

  test('Phenylalanine RNA sequence 1', () {
    final result = translator.translate("UUU");
    expect(result, equals(["Phenylalanine"]));
  });

  test('Phenylalanine RNA sequence 2', () {
    final result = translator.translate("UUC");
    expect(result, equals(["Phenylalanine"]));
  });

  test('Leucine RNA sequence 1', () {
    final result = translator.translate("UUA");
    expect(result, equals(["Leucine"]));
  });

  test('Leucine RNA sequence 2', () {
    final result = translator.translate("UUG");
    expect(result, equals(["Leucine"]));
  });

  test('Serine RNA sequence 1', () {
    final result = translator.translate("UCU");
    expect(result, equals(["Serine"]));
  });

  test('Serine RNA sequence 2', () {
    final result = translator.translate("UCC");
    expect(result, equals(["Serine"]));
  });

  test('Serine RNA sequence 3', () {
    final result = translator.translate("UCA");
    expect(result, equals(["Serine"]));
  });

  test('Serine RNA sequence 4', () {
    final result = translator.translate("UCG");
    expect(result, equals(["Serine"]));
  });

  test('Tyrosine RNA sequence 1', () {
    final result = translator.translate("UAU");
    expect(result, equals(["Tyrosine"]));
  });

  test('Tyrosine RNA sequence 2', () {
    final result = translator.translate("UAC");
    expect(result, equals(["Tyrosine"]));
  });

  test('Cysteine RNA sequence 1', () {
    final result = translator.translate("UGU");
    expect(result, equals(["Cysteine"]));
  });

  test('Cysteine RNA sequence 2', () {
    final result = translator.translate("UGC");
    expect(result, equals(["Cysteine"]));
  });

  test('Tryptophan RNA sequence', () {
    final result = translator.translate("UGG");
    expect(result, equals(["Tryptophan"]));
  });

  test('STOP codon RNA sequence 1', () {
    final result = translator.translate("UAA");
    expect(result, equals([]));
  });

  test('STOP codon RNA sequence 2', () {
    final result = translator.translate("UAG");
    expect(result, equals([]));
  });

  test('STOP codon RNA sequence 3', () {
    final result = translator.translate("UGA");
    expect(result, equals([]));
  });

  test('Sequence of two protein codons translates into proteins', () {
    final result = translator.translate("UUUUUU");
    expect(result, equals(["Phenylalanine", "Phenylalanine"]));
  });

  test('Sequence of two different protein codons translates into proteins', () {
    final result = translator.translate("UUAUUG");
    expect(result, equals(["Leucine", "Leucine"]));
  });

  test('Translate RNA strand into correct protein list', () {
    final result = translator.translate("AUGUUUUGG");
    expect(result, equals(["Methionine", "Phenylalanine", "Tryptophan"]));
  });

  test('Translation stops if STOP codon at beginning of sequence', () {
    final result = translator.translate("UAGUGG");
    expect(result, equals([]));
  });

  test('Translation stops if STOP codon at end of two-codon sequence', () {
    final result = translator.translate("UGGUAG");
    expect(result, equals(["Tryptophan"]));
  });

  test('Translation stops if STOP codon at end of three-codon sequence', () {
    final result = translator.translate("AUGUUUUAA");
    expect(result, equals(["Methionine", "Phenylalanine"]));
  });

  test('Translation stops if STOP codon in middle of three-codon sequence', () {
    final result = translator.translate("UGGUAGUGG");
    expect(result, equals(["Tryptophan"]));
  });

  test('Translation stops if STOP codon in middle of six-codon sequence', () {
    final result = translator.translate("UGGUGUUAUUAAUGGUUU");
    expect(result, equals(["Tryptophan", "Cysteine", "Tyrosine"]));
  });

  test("Non-existing codon can't translate", () {
    expect(() => translator.translate("AAA"), throwsA(isA<ArgumentError>()));
  });

  test("Unknown amino acids, not part of a codon, can't translate", () {
    expect(() => translator.translate("XYZ"), throwsA(isA<ArgumentError>()));
  });

  test("Incomplete RNA sequence can't translate", () {
    expect(() => translator.translate("AUGU"), throwsA(isA<ArgumentError>()));
  });

  test('Incomplete RNA sequence can translate if valid until a STOP codon', () {
    final result = translator.translate("UUCUUCUAAUGGU");
    expect(result, equals(["Phenylalanine", "Phenylalanine"]));
  });
}

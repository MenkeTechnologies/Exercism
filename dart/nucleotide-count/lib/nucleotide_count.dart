class InvalidNucleotideException implements Exception {}

class NucleotideCount {
  Map<String, int> count(String strand) {
    
    final result = {"A": 0, "C": 0, "G": 0, "T": 0};
    
    if (strand.split('').any((x) => !result.containsKey(x))) throw InvalidNucleotideException();
    
    return strand.split('').fold(result, (acc, n) { acc[n] = acc[n]! + 1; return acc; });
    
  }
}

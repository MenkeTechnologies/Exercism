class Anagram {
  List<String> findAnagrams(String s, List<String> cand) => cand.where((e) => mk(e) == mk(s) && e.toLowerCase() != s.toLowerCase()).toList();

  String mk(String e) => (e.toLowerCase().split('')..sort()).join();

}

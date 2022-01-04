object Anagram {
  def findAnagrams(str: String, candidates: List[String]) = candidates.filter(c => c.toLowerCase != str.toLowerCase && c.toLowerCase.sorted == str.toLowerCase.sorted)
}

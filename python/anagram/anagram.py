def find_anagrams(word, candidates):
    lc = word.lower()
    return list(filter(lambda c: sorted(c.lower()) == sorted(lc) and c.lower() != lc, candidates))

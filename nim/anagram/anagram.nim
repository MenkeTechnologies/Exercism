import tables, sequtils, unicode

func detectAnagrams*(word: string, candidates: seq[string]): seq[string] =
    let lc = word.toLower
    candidates.filterIt(it.toLower.toCountTable == lc.toCountTable and lc != it.toLower)


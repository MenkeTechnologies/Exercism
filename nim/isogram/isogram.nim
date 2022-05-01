import unicode, sequtils

proc isIsogram*(s: string): bool =
    let letters = toSeq(s.toLower.runes).filter(isAlpha)
    letters.deduplicate == letters

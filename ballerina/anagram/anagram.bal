public function anagrams(string word, string[] candidates) returns string[] {
    var lcTarget = word.toLowerAscii();
    var sortedTarget = sorted(lcTarget);
    return from var candidate in candidates
           let var lcCand = candidate.toLowerAscii()
           where lcTarget != lcCand && sortedTarget == sorted(lcCand)
           select candidate;
}

function sorted(string w) returns int[] => w.toCodePointInts().sort();


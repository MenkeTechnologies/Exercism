import tables
const dict = {'A': 0, 'C': 0, 'G': 0, 'T': 0}.toTable

proc countDna*(s: string): Table[char, int] =
    result = dict
    for c in s:
        result[c].inc

import bitops, sugar, tables, sequtils

const dict = {
    "eggs": 1,
    "peanuts": 2,
    "shellfish": 4,
    "strawberries": 8,
    "tomatoes": 16,
    "chocolate": 32,
    "pollen": 64,
    "cats": 128
}.toOrderedTable

type Allergies* = object
    score*: int

proc isAllergicTo*(allergies : Allergies, allergen : string) : bool =
    bitand(allergies.score, dict[allergen]) > 0

proc lst*(allergies: Allergies) : seq[string] =
    collect(for n in dict.keys: n).filterIt(allergies.isAllergicTo(it))

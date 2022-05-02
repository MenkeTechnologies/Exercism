import re, sequtils, strutils

proc abbreviate*(phrase: string): string =
    phrase.findAll(re"[A-Z]+['a-z]*|['a-z]+").mapIt(it[0].toUpperAscii).join

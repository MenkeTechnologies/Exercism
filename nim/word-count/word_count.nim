import re, strutils, tables

proc countWords*(s: string): CountTable[string] =
    s.toLowerAscii.findAll(re"\w+('\w+)*").toCountTable

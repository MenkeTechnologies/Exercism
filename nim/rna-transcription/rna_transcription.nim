import sequtils, strutils, sugar, tables

let dict = {'G': 'C', 'C': 'G', 'T': 'A', 'A': 'U'}.toTable

func toRna*(s: string): string = s.map(c => dict[c]).join

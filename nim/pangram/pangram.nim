import sequtils, strutils
proc isPangram*(inputStr: string): bool = {'a' .. 'z'}.allIt it in inputStr.toLower

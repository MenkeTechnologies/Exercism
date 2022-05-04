import sequtils
import tables

const dict = { '(': ')', '[': ']', '{': '}' }.toTable

func isPaired*(s: string): bool =
    var stack: seq[char] = @[]
    for c in s:
        if c in dict:
            stack.add(c)
        elif c in toSeq dict.values:
            if stack.len == 0 or c != dict[stack.pop]:
                return false
    stack.len == 0

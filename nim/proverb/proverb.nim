proc recite*(proverbWords: seq[string]): string =
  if proverbWords.len == 0: return ""
  for i in 0 ..< proverbWords.len() - 1:
    result.add "For want of a " & proverbWords[i] & " the " & proverbWords[i + 1] & " was lost.\n"
  result.add "And all for the want of a " & proverbWords[0] & "."

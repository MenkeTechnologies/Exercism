return (s) ->
  res = ""
  for _, c in utf8.codes s
    res = (utf8.char c) .. res
  res
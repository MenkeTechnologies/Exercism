def steps:
  if . < 1 then
    "Only positive integers are allowed" | halt_error
  elif . == 1 then
    0
  elif . % 2 == 1 then
    1 + (. * 3 + 1 | steps)
  else
    1 + (. / 2 | steps)
  end
;

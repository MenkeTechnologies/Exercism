def flat:
  if type == "array" then
    .[] | flat
  else
    .
  end;

[ .array | flat | select(. != null) ]

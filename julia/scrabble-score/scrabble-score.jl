const scores = merge(
  Dict(n => 1 for n in "AEIOULNRST"),
  Dict(n => 2 for n in "DG"),
  Dict(n => 3 for n in "BCMP"),
  Dict(n => 4 for n in "FHVWY"),
  Dict(n => 5 for n in "K"),
  Dict(n => 8 for n in "JX"),
  Dict(n => 10 for n in "QZ"),
)
function score(s)
  mapreduce(c -> get(scores, uppercase(c), 0), +, s, init=0)
end

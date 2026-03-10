drops = { {3, "Pling"}, {5, "Plang"}, {7, "Plong"} }
raindrops = (num) ->
  sounds = table.concat [ v for {k, v} in *drops when num % k == 0 ]
  if #sounds > 0 then sounds else tostring num
  
raindrops
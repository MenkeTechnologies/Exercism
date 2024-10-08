function distance(s1::AbstractString, s2::AbstractString)
  length(s1) == length(s2) || throw(ArgumentError("Length mismatch"))
    map(!=, s1, s2) |> sum
end

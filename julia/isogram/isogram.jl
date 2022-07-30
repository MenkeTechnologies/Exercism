function isisogram(s::AbstractString)::Bool
    allunique(c for c in lowercase(s) if isletter(c))
end

function detect_anagrams(target::AbstractString, candidates::AbstractArray)
    lcsort = s -> s |> lowercase |> collect |> sort
    sorted = lcsort(target)
    lc = lowercase(target)
    filter(s -> lowercase(s) != lc && sorted == lcsort(s), candidates)
end

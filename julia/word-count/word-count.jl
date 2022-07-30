function wordcount(s::AbstractString)
    lowercase_sentence = lowercase(s)
    dict = Dict()
    word = r"(\w+('\w)?)"
    for w in eachmatch(word, lowercase_sentence)
        if !haskey(dict, w.match)
            dict[w.match] = 1
        else
            dict[w.match] += 1
        end
    end
    return dict
end

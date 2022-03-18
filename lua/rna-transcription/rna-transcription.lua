local mapping = { C = 'G', G = 'C', A = 'U', T = 'A' }

return function(dna)

    local rna = {}

    for l in dna:gmatch(".") do
        table.insert(rna, mapping[l])
    end

    return table.concat(rna, '')

end

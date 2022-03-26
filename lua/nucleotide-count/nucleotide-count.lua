local DNA = {}

function DNA:new(s)
    self.nucleotideCounts = { A = 0, T = 0, G = 0, C = 0 }
    s = string.upper(s)

    for i = 1, #s do
        local nt = s:sub(i,i)
        self.nucleotideCounts[nt] = self.nucleotideCounts[nt] + 1
    end

    return self
end

function DNA:count(nt)
    assert (self.nucleotideCounts[nt], 'Invalid Nucleotide')
    return self.nucleotideCounts[nt]
end

return DNA

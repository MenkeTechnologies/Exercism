dict = { G: "C", C: "G", T: "A", A: "U" }

return (s) -> s\gsub("[ACGT]", dict)

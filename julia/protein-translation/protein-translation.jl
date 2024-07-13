Codon_Protein = Dict(
	"AUG" => "Methionine",
	"UUU" => "Phenylalanine",
	"UUC" => "Phenylalanine",
	"UUA" => "Leucine",
	"UUG" => "Leucine",
	"UCU" => "Serine",
	"UCC" => "Serine",
	"UCA" => "Serine",
	"UCG" => "Serine",
	"UAU" => "Tyrosine",
	"UAC" => "Tyrosine",
	"UGU" => "Cysteine",
	"UGC" => "Cysteine",
	"UGG" => "Tryptophan",
	"UAA" => "STOP",
	"UAG" => "STOP",
	"UGA" => "STOP",
)
function proteins(strand)
	res = String[]
	for codon in Iterators.partition(strand, 3)
        if !haskey(Codon_Protein, codon)
            throw(DomainError("invalid codon"))
        end
		c = Codon_Protein[codon]
		c == "STOP" ? break : push!(res, c)
	end
	return res
end

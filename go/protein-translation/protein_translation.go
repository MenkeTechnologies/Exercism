package protein

import "errors"

var (
	ErrStop        = errors.New("stop")
	ErrInvalidBase = errors.New("invalid base")
	mappings       = map[string]string{
		"AUG": "Methionine",
		"UUU": "Phenylalanine",
		"UUC": "Phenylalanine",
		"UUA": "Leucine",
		"UUG": "Leucine",
		"UCU": "Serine",
		"UCC": "Serine",
		"UCA": "Serine",
		"UCG": "Serine",
		"UAU": "Tyrosine",
		"UAC": "Tyrosine",
		"UGU": "Cysteine",
		"UGC": "Cysteine",
		"UGG": "Tryptophan",
		"UAA": "STOP",
		"UAG": "STOP",
		"UGA": "STOP"}
)

func FromRNA(rna string) ([]string, error) {
	var proteins []string
	for i, j := 0, 3; j <= len(rna); i, j = i+3, j+3 {
		protein, err := FromCodon(rna[i:j])
		if err != nil {
			if errors.Is(err, ErrStop) {
				break
			}
			return nil, err
		}
		proteins = append(proteins, protein)
	}
	return proteins, nil
}

func FromCodon(codon string) (string, error) {
	val, ok := mappings[codon]
	if !ok {
		return "", ErrInvalidBase
	} else if val == "STOP" {
		return "", ErrStop
	}
	return val, nil
}

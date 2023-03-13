proc proteins {strand} {
    set aminoacids {
        AUG	Methionine
        UUU	Phenylalanine
        UUC	Phenylalanine
        UUA	Leucine
        UUG	Leucine
        UCU	Serine
        UCC	Serine
        UCA Serine
        UCG	Serine
        UAU	Tyrosine
        UAC	Tyrosine
        UGU	Cysteine
        UGC	Cysteine
        UGG	Tryptophan
        UAA	STOP
        UAG	STOP
        UGA	STOP
    }
    set output {}
    foreach codon [regexp -all -inline {.{1,3}} $strand] {
        if {![dict exists $aminoacids $codon]} {error "Invalid codon"}
        set protein [dict get $aminoacids $codon]
        if {$protein eq "STOP"} {break}
        lappend output $protein
    }
    return $output
}

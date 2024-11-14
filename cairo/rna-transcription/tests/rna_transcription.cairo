use rna_transcription::to_rna;

#[test]
fn empty_RNA_sequence() {
    assert_eq!(to_rna(""), "");
}

#[test]

fn RNA_complement_of_cytosine_is_guanine() {
    assert_eq!(to_rna("C"), "G");
}

#[test]

fn RNA_complement_of_guanine_is_cytosine() {
    assert_eq!(to_rna("G"), "C");
}

#[test]

fn RNA_complement_of_thymine_is_adenine() {
    assert_eq!(to_rna("T"), "A");
}

#[test]

fn RNA_complement_of_adenine_is_uracil() {
    assert_eq!(to_rna("A"), "U");
}

#[test]

fn RNA_complement() {
    assert_eq!(to_rna("ACGTGGTCTTAA"), "UGCACCAGAAUU");
}

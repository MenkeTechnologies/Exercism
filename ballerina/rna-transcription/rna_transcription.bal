public function toRna(string dna) returns string {
    map<string> rna = {"C": "G", "G": "C", "T": "A", "A": "U"};
    return from string c in dna
        select rna.get(c);
}

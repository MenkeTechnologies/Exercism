nucleotide_count = function(input) {
    if (grepl("[^ACGT]", input)) {
        stop("invalid nucleotide")
    }
    as.list(table(factor(strsplit(input, "")[[1]], levels=c("A", "C", "G", "T"))))

}

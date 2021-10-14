coll = 

to_rna = function(dna) {
  map = list(G = "C", C = "G", T = "A", A = "U")
  v = unlist(strsplit(toupper(dna), ""))
  
  paste(lapply(v, FUN = function(x) {
    if (is.null(map[[x]])){
      stop("invalid dna strand")
    }
    map[[x]]
  }), collapse="")
}

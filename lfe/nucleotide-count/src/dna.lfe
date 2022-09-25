(defmodule dna
  (export (nucleotide-counts 1)
          (count 2)))

(defun counter (nt acc)
  (maps:update (list nt)
               (+ 1 (maps:get (list nt) acc))
               acc))

(defun create-dict (dna)
    (lists:foldr #'counter/2 #M("A" 0 "C" 0 "G" 0 "T" 0) dna))

(defun nucleotide-counts (dna)
  (maps:to_list (create-dict dna)))

(defun count (dna nt)
  (maps:get nt (create-dict dna)))

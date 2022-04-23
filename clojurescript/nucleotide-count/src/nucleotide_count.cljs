(ns nucleotide-count)

(def nucleotides {"A" 0 "T" 0 "C" 0 "G" 0})

(defn nucleotide-counts [dna-strand]
  (->> dna-strand
       (seq)
       (frequencies)
       (#(conj nucleotides %))
       ))

(defn count-of-nucleotide-in-strand [nucleotide dna-strand]
  (if (nucleotides nucleotide)
    ((nucleotide-counts dna-strand) nucleotide)
    (throw (js/Error "Bad nucleotide")))
  )

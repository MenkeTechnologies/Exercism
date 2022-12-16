(ns nucleotide-count)

(def nucleotides {\A 0 \T 0 \C 0 \G 0})

(defn nucleotide-counts [s]
  (->> s
       (frequencies)
       (#(conj nucleotides %))))

(defn count-of-nucleotide-in-strand [nt s]
  (if (nucleotides nt)
    ((nucleotide-counts s) nt)
    (throw (Exception. "Bad nucleotide"))))

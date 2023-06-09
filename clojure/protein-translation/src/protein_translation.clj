(ns protein-translation)

(def codon-to-protein {["AUG"]                      "Methionine"
                       ["UUU", "UUC"]               "Phenylalanine"
                       ["UUA", "UUG"]               "Leucine"
                       ["UCU", "UCC", "UCA", "UCG"] "Serine"
                       ["UAU", "UAC"]               "Tyrosine"
                       ["UGU", "UGC"]               "Cysteine"
                       ["UGG"]                      "Tryptophan"
                       ["UAA", "UAG" "UGA"]         "STOP"})

(def codon-map
  (->> (for [[codons protein] codon-to-protein]
         (map #(array-map % protein) codons))
       flatten
       (apply merge)))
(defn translate-codon [dna] (codon-map dna))
(defn translate-rna [dna]
  (->> (partition 3 dna)
       (map (partial apply str))
       (map codon-map)
       (take-while (partial not= "STOP"))))

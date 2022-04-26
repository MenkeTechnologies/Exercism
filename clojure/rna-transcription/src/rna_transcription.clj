(ns rna-transcription)

(def nucleotide-map {\G \C \C \G \T \A \A \U})

(defn- get-nt [k]
  (let [v (get nucleotide-map k)]
    (if (nil? v)
      (throw (AssertionError. "invalid"))
      v
      )))

(defn to-rna [dna]
  (->> dna
       (map #(get-nt %))
       (apply str)))

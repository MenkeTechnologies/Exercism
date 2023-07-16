(ns sieve)

(defn prime? [n] (->> n Math/sqrt Math/floor inc (range 2) (filter #(zero? (rem n %))) empty?))

(defn sieve [n] (->> n inc (range 2) (filter prime?)))

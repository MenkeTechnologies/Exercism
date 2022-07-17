(ns isbn-verifier)

(defn isbn? [isbn]
  (let [isbn-digits (->> isbn
                         (remove #(= % \-))
                         (replace {"X" "10"}))
        isbn-checksum (->> isbn-digits
                           reverse
                           (map-indexed #(* %2 (inc %1)))
                           (reduce +))]
    (and (= 10 (count isbn-digits))
         (zero? (mod isbn-checksum 11)))))

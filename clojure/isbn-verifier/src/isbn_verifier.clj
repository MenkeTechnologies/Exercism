(ns isbn-verifier)

(defn isbn? [isbn]
  (->>
    (some->> (clojure.string/replace isbn "-" "")
             (re-matches #"^\d{9}[\dX]$")
             (map #(if (= \X %) 10 (Character/digit % 10)))
             reverse
             (map-indexed #(* (inc %1) %2))
             (apply +)
             (#(mod % 11))
             zero?)
    boolean))

(ns octal)

(defn octal? [s] (->> s (re-matches #"[0-7]+") boolean))

(defn to-decimal [s]
  (if (not (octal? s)) 0
    (->> s
         (map #(Character/digit % 10))
         (reduce #(+ (* % 8) %2) 0))))

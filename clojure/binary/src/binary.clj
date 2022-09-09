(ns binary)

(defn to-decimal [s]
  (->> s
    reverse
    (map-indexed #(bit-shift-left (case %2 \1 1 0) %1))
    (apply +)))

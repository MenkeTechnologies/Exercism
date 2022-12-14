(ns prime-factors)

(defn of [n]
  (loop [val n
         divisor 2
         factors []]
    (cond
      (= val 1) factors
      (zero? (mod val divisor))
      (recur (/ val divisor) divisor (conj factors divisor))
      :else
      (recur val (inc divisor) factors))))

(ns perfect-numbers)

(defn classify [num]
  (when (not (pos? num))
    (throw (IllegalArgumentException. "Number must be positive")))
  (let [sum (->> (range 1 num)
             (filter #(= (mod num %) 0))
             (reduce +))]
    (condp #(%1 sum %2) num
      < :deficient
      > :abundant
      = :perfect)))

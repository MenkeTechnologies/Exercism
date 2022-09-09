(ns sum-of-multiples)

(defn isMultiple? [factors num]
  (some #(zero? (mod num %)) factors))

(defn sum-of-multiples [factors limit]
  (->> (range 1 limit)
       (filter #(isMultiple? factors %))
       (reduce +)
  ))

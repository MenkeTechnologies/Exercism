(ns luhn)

(defn doubler [n]
  (if (> n 4)
    (+ n n -9)
    (+ n n)))

(defn sum [input]
  (->> input
       (re-seq #"\d")
       (map #(Integer/parseInt %))
       reverse
       (partition 2 2 [0])
       (reduce (fn [sum [a b]] (+ sum a (doubler b))) 0)))

(defn valid? [input]
  (boolean
    (and (re-matches #"[\d\s]*" input)
         (zero? (rem (sum input) 10))
         (< 1 (count (re-seq #"\d" input))))))

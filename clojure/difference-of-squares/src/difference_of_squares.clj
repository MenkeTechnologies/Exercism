(ns difference-of-squares)

(defn sum-of-squares [n]
  (->> (range 1 (inc n))
       (map #(* % %))
       (reduce +)))

(defn square-of-sum [n]
  (->> (range 1 (inc n))
       (reduce +)
       (repeat 2)
       (reduce *)))

(defn difference [num]
  (- (square-of-sum num) (sum-of-squares num)))

(ns difference-of-squares)

(defn sum-of-squares [n]
  (->> (range 1 (+ n 1))
       (map #(* % %))
       (reduce +)
       )
  )

(defn square-of-sum [n]
  (->> (range 1 (+ n 1))
       (reduce +)
       (repeat 2)
       (reduce *)
       )
  )

(defn difference [num]
  (- (square-of-sum num) (sum-of-squares num))
  )

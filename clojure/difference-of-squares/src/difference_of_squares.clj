(ns difference-of-squares)

(defn sum-of-squares [n]
  (reduce + (map #(* % %) (range 1 (inc n))))
  )

(defn square-of-sum [n]
  (reduce * (repeat 2 (reduce + (range 1 (inc n)))))
  )

(defn difference [num]
  (- (square-of-sum num) (sum-of-squares num))
  )

(ns collatz-conjecture)

(defn work [num]
  (if (even? num)
    (/ num 2)
    (inc (* num 3))))

(defn collatz [num]
  (if (< num 1) (throw "Input cannot be < 1")
    (loop [cur num cnt 0]
      (if (= 1 cur) cnt
      (recur (work cur) (inc cnt))))))

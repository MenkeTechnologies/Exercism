(ns collatz-conjecture)

(defn work [num]
  (if (even? num)
    (/ num 2)
    (inc (* num 3))))

(defn collatz [num]
  (when (< num 1) (throw "Input cannot be < 1"))
    (loop [cur num cnt 0]
      (if (< cur 2) cnt
      (recur (work cur) (inc cnt)))))

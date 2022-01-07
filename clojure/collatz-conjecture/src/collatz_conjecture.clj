(ns collatz-conjecture)

(defn work [num]
  (if (even? num)
    (/ num 2)
    (inc (* num 3)))
  )

(defn collatz [num]

  (if (<= num 0) (throw "Input cannot be <= 0")

    (loop [v num cnt 0]
      (if (= 1 v) cnt
      (recur (work v) (inc cnt))
      )))
  )

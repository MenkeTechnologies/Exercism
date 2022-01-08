(ns perfect-numbers)

(defn classify [num]

  (if (not (pos? num))
    (throw (IllegalArgumentException. "Number must be positive")))

  (let [sum
        (->> (range 1 num)
             (filter #(zero? (mod num %)))
             (reduce +))]
    (condp #(%1 sum %2) num
      < :deficient
      > :abundant
      = :perfect
      )
    )

  )


(ns binary-search)
(defn middle [items]
  (quot (count items) 2))

(defn search-for [item items]
  (loop [lo 0
         hi (- (count items) 1)]
    (if (> lo hi)
      (assert false "not found")
      (let [mid (quot (+ lo hi) 2)
            mid-val (nth items mid)]
        (cond
          (= mid-val item) mid
          (< mid-val item) (recur (+ mid 1) hi)
          (> mid-val item) (recur lo (- mid 1)))))))

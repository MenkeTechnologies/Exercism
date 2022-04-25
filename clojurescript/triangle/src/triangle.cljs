(ns triangle)

(defn is-valid? [a b c]
  (let [sides (sort-by #(* -1 %) [a b c])]
    (and (every? #(not= 0 %) sides)
         (<= (first sides) (apply + (rest sides))))))

(defn- uniq-sides [a b c]
  (count (distinct [a b c])))

(defn equilateral? [a b c]
  (and (is-valid? a b c)
       (= 1 (uniq-sides a b c)))
  )

(defn isosceles? [a b c]
  (and (is-valid? a b c)
       (>= 2 (uniq-sides a b c)))
  )

(defn scalene? [a b c]
  (and (is-valid? a b c)
       (= 3 (uniq-sides a b c)))
  )

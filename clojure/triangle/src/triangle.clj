(ns triangle)

(defn is-valid? [a b c]
  (let [[a b c] (sort [a b c])]
    (and (pos? a)
         (<= c (+ a b)))))

(defn equilateral? [a b c]
  (and (is-valid? a b c)
       (= a b c)))
(defn isosceles? [a b c]
  (and (is-valid? a b c)
       (< (count (set [a b c])) 3)))
(defn scalene? [a b c]
  (and (is-valid? a b c)
       (= (count (set [a b c])) 3)))

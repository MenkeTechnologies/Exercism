(ns raindrops)

(def sounds {3 "Pling"
             5 "Plang"
             7 "Plong"})

(defn convert [n]
  (as-> sounds _
       (filter #(zero? (rem n (key %))) _)
       (vals _)
       (or _ [n])
       (apply str _)
        )
  )

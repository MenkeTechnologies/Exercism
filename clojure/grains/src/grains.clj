(ns grains)

(defn square [n]
  (.pow (BigInteger. "2") (dec n))
  )

(defn total []
  (->> (range 1 65)
       (map square)
       (apply +))
  )

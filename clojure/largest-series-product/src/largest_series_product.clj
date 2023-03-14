(ns largest-series-product)

(defn largest-product [n s]
  (assert (or (not (empty? s))
              (zero? n)))
  (if (empty? s)
    1
    (->> s
         (map #(-> % str Integer/parseInt))
         (partition n 1)
         (map #(reduce * %))
         (apply max))))

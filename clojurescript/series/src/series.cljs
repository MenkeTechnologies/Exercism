(ns series)

(defn slices [s len]
  (if (zero? len)
    [""]
    (mapv #(apply str %) (partition len 1 s))))

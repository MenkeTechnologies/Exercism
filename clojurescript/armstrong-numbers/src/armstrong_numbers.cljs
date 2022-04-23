(ns armstrong-numbers)

(defn armstrong? [n]
  (let [digits (map #(js/parseInt %) (str n))
        len (count digits)]
    (->> digits
         (map #(js/Math.pow % len))
         (apply +)
         (= n)
      )
    )
  
  )

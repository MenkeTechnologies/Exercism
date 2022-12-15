(ns raindrops)

(def ^:const dict {3 "Pling" 5 "Plang" 7 "Plong"})

(defn convert [num]
  (->> (list (->> dict (filter #(zero? (mod num (first %)))) vals (apply str)))
       (map #(if (clojure.string/blank? %) num %))
       (apply str))
  )

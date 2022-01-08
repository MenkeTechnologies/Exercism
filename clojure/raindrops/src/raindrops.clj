(ns raindrops)

(defn convert [num]
  (->> (list (->> {3 "Pling" 5 "Plang" 7 "Plong"}
                  (filter #(zero? (mod num (first %)))) vals (apply str)))
       (map #(if (clojure.string/blank? %) num %))
       (apply str))
  )

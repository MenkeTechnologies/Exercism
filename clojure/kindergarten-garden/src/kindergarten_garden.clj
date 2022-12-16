(ns kindergarten-garden
  (:require [clojure.string :as str]))

(def default-student-list
  ["Alice" "Bob" "Charlie" "David"
   "Eve" "Fred" "Ginny" "Harriet"
   "Ileana" "Joseph" "Kincaid" "Larry"])

(def plant-assoc {\R :radishes \C :clover \V :violets \G :grass})

(defn garden
  ([s] (garden s default-student-list))
  ([s students]
   (let [student-keys (->> students
              (map str/lower-case)
              (sort)
              (map keyword))
         garden-keys (->> s
              (str/split-lines)
              (map #(partition 2 %))
              (apply interleave)
              (flatten)
              (map plant-assoc)
              (partition 4))]
     (zipmap student-keys garden-keys))))


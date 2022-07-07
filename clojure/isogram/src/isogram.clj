(ns isogram
  (:require [clojure.string :as s]))


(defn isogram? [w]
  (->> w
       s/lower-case
       (re-seq #"\p{IsAlphabetic}")
       (apply distinct?)
       )
  )

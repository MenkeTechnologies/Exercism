(ns isogram (:require [clojure.string :as str]))

(defn isogram? [word]
  (->> (str/lower-case word)
       (re-seq #"(?u)\p{L}")
       (apply distinct?)))

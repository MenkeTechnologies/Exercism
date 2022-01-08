(ns pangram
  (:require [clojure.string :as s]))

(defn pangram? [str]

  (def lc (s/lower-case str))
  (->> (range (int \a) (inc (int \z)))
       (map char)
       (every? #(some? (s/index-of lc %)))
       )
  )

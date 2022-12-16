(ns pangram
  (:require [clojure.string :as str]))

(defn pangram? [s]
  (let [lc (str/lower-case s)]
    (->> (range (int \a) (inc (int \z)))
         (map char)
         (every? #(some? (str/index-of lc %))))))

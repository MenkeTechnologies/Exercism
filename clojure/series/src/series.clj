(ns series
  (:require [clojure.string :as s]))
(defn slices [string n]
  (cond (zero? n) [""]
        :else (map s/join (partition n 1 string))))

(ns series
  (:require [clojure.string :as str]))
(defn slices [s len]
  (cond (zero? len) [""]
        :else (->> s (partition len 1) (map str/join))))

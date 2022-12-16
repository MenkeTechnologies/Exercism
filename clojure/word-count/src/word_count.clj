(ns word-count (:require [clojure.string :as str]))

(defn word-count [s]
  (->> s
       (re-seq #"\w+")
       (map str/lower-case)
       (frequencies)))

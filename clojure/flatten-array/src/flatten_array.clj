(ns flatten-array
  (:use [clojure.core :exclude [flatten]]))

(defn flatten [init]
  (loop [[head & tail] init acc []]
    (if (nil? head)
      acc
      (if (coll? head)
        (recur tail (into acc (flatten head)))
        (recur tail (conj acc head))))))


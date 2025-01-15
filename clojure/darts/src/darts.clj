(ns darts
  (:require [clojure.math :as math]))

(defn distance [x y] (math/sqrt (+ (math/pow x 2) (math/pow y 2))))

(defn score [x y]
  (condp < (distance x y)
    10 0
    5 1
    1 5
    10))

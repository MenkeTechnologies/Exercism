(ns luhn
  (:require [clojure.string :as str]))

(defn str->int [s]
  (Integer.(str s)))

(defn double-digit->single-digit [number]
  (if (>= number 10)
    (- number 9)
    number))

(defn double-every-second-digit [index value]
  (->> value
      (* (inc (mod index 2)))
      double-digit->single-digit))

(defn has-invalid-chars? [s]
  (->> s
       (re-find #"\D")
       empty?
       not))

(defn valid-number? [s]
  (->> s
       (map str->int)
       reverse
       (map-indexed double-every-second-digit)
       (reduce +)
       (#(mod % 10))
       (= 0)))

(defn valid? [s]
  (let [nows (str/replace s #"\s" "")]
    (cond
      (< (count nows ) 2) false
      (has-invalid-chars? nows ) false
      :else (valid-number? nows ))))

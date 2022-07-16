(ns word-count (:require [clojure.string :as str]))

(defn word-count [s]
  (frequencies (re-seq #"\w+" (str/lower-case s))))

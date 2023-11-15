(ns squeaky-clean
  (:require [clojure.string :as str]))
(defn clean [s]
  (-> s
      (str/replace #"\s" "_")
      (str/replace #"\p{IsControl}" "CTRL")
      (str/replace #"-(\p{Ll})" #(str/upper-case (% 1)))
      (str/replace #"[^_\p{L}]" "")
      (str/replace #"[\p{IsGreek}&&\p{IsLowercase}]" "")))

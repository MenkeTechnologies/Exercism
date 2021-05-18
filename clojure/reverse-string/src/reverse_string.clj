(ns reverse-string
  (:require [clojure.string :as str]))

(defn reverse-string [s] ;; <- arglist goes here
  (str/reverse s)
)

(ns bob
  (:require [clojure.string :as str]))

(defn question?
  "docstring"
  [str]
  (str/ends-with? (str/trim str) "?")
  )

(defn shout?
  "docstring"
  [str]
  (and (= (str/upper-case str) str) (re-seq #"[a-zA-Z]" str))
  )

(defn response-for [s] ;; <- arglist goes here
  (cond
    (str/blank? s) "Fine. Be that way!"
    (and (question? s) (shout? s)) "Calm down, I know what I'm doing!"
    (question? s) "Sure."
    (shout? s) "Whoa, chill out!"
    :else "Whatever."
    )
)

(ns acronym
  (:require [clojure.string :as str]))

(defn acronym [str]
  (->> (str/split str #"(\W+|[a-z](?=[A-Z]))")
       (map first)
       (str/join)
       (str/upper-case))
  )

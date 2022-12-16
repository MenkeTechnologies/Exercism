(ns acronym
  (:require [clojure.string :as str]))

(defn acronym [s]
  (->> (-> s (str/split #"(\W+|[a-z](?=[A-Z]))"))
       (map first)
       (str/join)
       (str/upper-case)))

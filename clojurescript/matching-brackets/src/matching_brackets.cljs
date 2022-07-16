(ns matching-brackets (:require [clojure.string :as str]))

(defn valid? [s]
    (let [braces (filter #{"{" "}" "(" ")" "[" "]"} (str/split s #""))
          remove_pairs (->> braces
                       (str/join "")
                       (iterate #(str/replace % #"(\{\}|\[\]|\(\))" "")))]
      (-> remove_pairs
          (nth (count s))
          empty?)))

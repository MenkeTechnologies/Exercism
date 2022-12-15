(ns rotational-cipher
  (:require [clojure.string :as str]))

(def ^:const alphabet "abcdefghijklmnopqrstuvwxyz")

(defn rotate [s key]
  (let [shifted (->> alphabet cycle (drop (mod key 26)) (take 26))
        cipher (zipmap (->> alphabet str/upper-case (str alphabet)) (->> shifted (map str/upper-case) (concat shifted)))]
    (->> s (map #(cipher % %)) str/join)))


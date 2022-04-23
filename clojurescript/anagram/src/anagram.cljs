(ns anagram
  (:require [clojure.string :as str]))

(defn anagram-of? [word, cand]
  (let [lc (str/lower-case word)
        lc-cand (str/lower-case cand)]
    (and
      (not= lc lc-cand)
      (= (sort lc) (sort lc-cand)))
    )
  )

(defn anagrams-for [word cands]
  (filter (partial anagram-of? word) cands)
  )

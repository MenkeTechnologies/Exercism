(ns binary-search)

(defn middle
  ([vec] (middle 0 (count vec)))
  ([lo hi] (quot (+ lo hi) 2)))

(defn aux [target vec lo hi]
  (let [mid-idx (middle lo hi)
          mid-val (nth vec mid-idx)]
      (cond
        (> lo hi) (throw (js/Error. "not found"))
        (< mid-val target) (recur target vec (inc mid-idx) hi)
        (> mid-val target) (recur target vec lo (dec mid-idx))
        :else mid-idx)))

(defn search-for [target vec]
    (aux target vec 0 (dec (count vec))))

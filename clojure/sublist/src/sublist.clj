(ns sublist)

(defn sublist? [coll1 coll2]
  (some #{coll1} (partition (count coll1) 1 coll2)))

(defn classify [coll1 coll2]
  (cond (= coll1 coll2) :equal
        (sublist? coll1 coll2) :sublist
        (sublist? coll2 coll1) :superlist
        :else :unequal))

(ns binary-search-tree)

(defn value [n] (:val n))
(defn singleton [v] {:val v})
(defn left [t] (:left t))
(defn right [t] (:right t))

(defn- -insert [t v]
    (if (nil? t) (singleton v)
          (let [dir (if (<= v (value t)) :left :right)]
                  (update t dir -insert v))))

(defn insert [v t] (-insert t v))

(defn from-list [[x & xs]] (reduce -insert (singleton x) xs))

(defn to-list [{:keys [left right val] :as t}]
    (when t
          (concat (to-list left) [val] (to-list right))))

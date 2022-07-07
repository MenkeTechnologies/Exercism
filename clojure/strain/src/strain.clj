(ns strain)

(defn retain [pred coll] (reduce
                           (fn [acc n] (if (pred n) (conj acc n) acc))
                           [] coll))

  (defn discard [pred coll] (retain (complement pred) coll))

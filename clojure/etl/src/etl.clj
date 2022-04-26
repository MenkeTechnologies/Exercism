(ns etl)

(defn partial-transform [[num letters]]
  (let [letters (map clojure.string/lower-case letters)]
    (apply merge (for [letter letters] (assoc {} letter num))))
  )

(defn transform [source]
  (->> (into [] source)
       (map partial-transform)
       (apply merge))
  )

(ns grade-school)

(defn add [db name grade]
  (merge-with concat db {grade [name]}))

(defn grade [db grade]
  (db grade []))

(defn sorted [db]
  (->> db
      (map (fn [[k v]] [k (sort v)]))
      (into (sorted-map))))

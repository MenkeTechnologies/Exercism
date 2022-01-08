(ns bird-watcher)

(def last-week
  [0 2 5 3 7 8 4]
  )

(defn today [birds]
  (last birds)
  )

(defn inc-bird [birds]
  (-> birds
      pop
      (conj (-> birds today inc))
      )
  )

(defn day-without-birds? [birds]
  (->> birds
       (every? #(pos? %))
       (not)
       )

  )

(defn n-days-count [birds n]
  (->> birds
       (take n)
       (reduce +))
  )

(defn busy-days [birds]
  (->> birds
       (remove #(< % 5))
       count)
  )

(defn odd-week? [birds]
  (let [odds (take-nth 2 birds)
        evens (take-nth 2 (rest birds))
        ]

    (and (every? #(= 1 %) odds)
         (every? #(= 0 %) evens))
    )
  )

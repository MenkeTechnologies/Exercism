(ns bird-watcher)

(def last-week [0 2 5 3 7 8 4])

(def today last)

(defn inc-bird [birds]
  (-> birds
      pop
      (conj (->> birds today inc))))

(defn day-without-birds? [birds]
  (->> birds
       (every? #(pos? %))
       (not)))

(defn n-days-count [birds n]
  (->> birds
       (take n)
       (reduce +)))

(defn busy-days [birds]
  (->> birds
       (remove #(< % 5))
       count))

(defn odd-week? [birds]
  (let [odds (->> birds (take-nth 2))
        evens (->> birds rest (take-nth 2))]
    (and
      (->> evens (every? #(= 0 %)))
      (->> odds (every? #(= 1 %))))))

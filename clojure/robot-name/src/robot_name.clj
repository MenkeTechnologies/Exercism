(ns robot-name)

(def to-str (partial apply str))
(def caps (map char (range 65 91)))

(defn generate-name []
  (let [letters (->> caps seq shuffle (take 2) to-str)
        numbers (->> 10 range shuffle (take 3) to-str)]
    (to-str letters numbers)))
(defn robot []
  (atom {:name (generate-name)}))
(defn robot-name [robot]
  (:name @robot))
(defn reset-name [robot]
  (swap! robot assoc :name (generate-name)))

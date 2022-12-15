(ns robot-simulator)

(defn robot [coordinates bearing]
  {:coordinates coordinates :bearing bearing})

(def turn-right
  {:north :east, :east :south,
   :south :west, :west :north})

(def turn-left (zipmap (vals turn-right) (keys turn-right)))

(def advance
  {:north #(update % :y inc)
   :east  #(update % :x inc)
   :south #(update % :y dec)
   :west  #(update % :x dec)})

(defn command [robot cmd]
  (case cmd
    \A (->> (:bearing robot) advance (update robot :coordinates))
    \R (->> turn-right (update robot :bearing))
    \L (->> turn-left (update robot :bearing))))

(defn simulate [commands robot]
  (->> commands (reduce command robot)))

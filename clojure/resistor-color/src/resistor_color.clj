(ns resistor-color)

(def dict {"black" 0
             "brown" 1
             "red" 2
             "orange" 3
             "yellow" 4
             "green" 5
             "blue" 6
             "violet" 7
             "grey" 8
             "white" 9})

(def colors (keys (into (sorted-map-by (fn [k1 k2] (compare (dict k1) (dict k2)))) dict)))

(defn color-code [color] (dict color))

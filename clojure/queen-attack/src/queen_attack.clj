(ns queen-attack)

(defn abs [n] (max n (- n)))

(def empty-board
  (->> "_"
       (repeat 8)
       vec
       (repeat 8)
       vec))

(defn place-queen [positions key color board]
  (if-let [position (get positions key)]
    (assoc-in board position color)
    board))

(defn render-board [board]
  (->> board
       (map (partial clojure.string/join " "))
       (map #(str %1 "\n"))
       clojure.string/join))

(defn board-string [positions]
  (->> empty-board
      (place-queen positions :w "W")
      (place-queen positions :b "B")
      render-board))

(defn can-attack [{[xb yb] :b
                   [xw yw] :w}]
  (let [dx (abs (- xb xw))
        dy (abs (- yb yw))]
    (cond
      (zero? dx) true
      (zero? dy) true
      (= dx dy) true
      :else false)))

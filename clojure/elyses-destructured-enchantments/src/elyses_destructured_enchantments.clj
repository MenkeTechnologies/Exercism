(ns elyses-destructured-enchantments)

(defn first-card
  "Returns the first card from deck."
  [[f]]
  f
)

(defn second-card
  "Returns the second card from deck."
  [[_ s]]
  s
)

(defn swap-top-two-cards
  "Returns the deck with first two items reversed."
  [[f s & rst]]
  (concat [s f] rst)
)

(defn discard-top-card
  "Returns a vector containing the first card and
   a vector of the remaining cards in the deck."
  [[f & rst]]
  [f rst]
)

(def face-cards
  ["jack" "queen" "king"])

(defn insert-face-cards
  "Returns the deck with face cards between its head and tail."
  [[f & rst]]
  (concat (some-> f vector) face-cards rst)

)

(ns elyses-destructured-enchantments)

(defn first-card [[f]] f)

(defn second-card [[_ s]] s)

(defn swap-top-two-cards [[f s & rst]] (concat [s f] rst))

(defn discard-top-card [[f & rst]] [f rst])

(def face-cards ["jack" "queen" "king"])

(defn insert-face-cards [[f & rst]] (concat (some-> f vector) face-cards rst))

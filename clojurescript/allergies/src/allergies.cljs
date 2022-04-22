(ns allergies)

(def allergen->score
  {:eggs         1
   :peanuts      2
   :shellfish    4
   :strawberries 8
   :tomatoes     16
   :chocolate    32
   :pollen       64
   :cats         128})

(defn allergic-to? [mask allergen]
      (pos?
        (bit-and mask(allergen allergen->score))))


(defn allergies [mask]
      (filter #(allergic-to? mask %)
              (keys allergen->score)))

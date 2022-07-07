(ns allergies)

(defn allergies [s]
  (cond-> []
          (bit-test s 0) (conj :eggs)
          (bit-test s 1) (conj :peanuts)
          (bit-test s 2) (conj :shellfish)
          (bit-test s 3) (conj :strawberries)
          (bit-test s 4) (conj :tomatoes)
          (bit-test s 5) (conj :chocolate)
          (bit-test s 6) (conj :pollen)
          (bit-test s 7) (conj :cats)))

(defn allergic-to? [score substance]
  (some #{substance} (allergies score)))

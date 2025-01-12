(ns eliuds-eggs)

(defn egg-count [n] (->> n Long/toBinaryString (filter #(= \1 %)) count))

(ns armstrong-numbers)

(defn armstrong? [num]
  (let [digits (->> num str (map #(Character/getNumericValue %)))
        count (count digits)
        pow-digits (map #(apply * (repeat count %)) digits)]
    (= num (apply + pow-digits))))

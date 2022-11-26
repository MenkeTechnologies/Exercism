(ns roman-numerals)

(def num-roman-pairs [[1000 "M"]
                      [900 "CM"]
                      [500 "D"]
                      [400 "CD"]
                      [100 "C"]
                      [90 "XC"]
                      [50 "L"]
                      [40 "XL"]
                      [10 "X"]
                      [9 "IX"]
                      [5 "V"]
                      [4 "IV"]
                      [1 "I"]])

(defn numerals [init]
  (->> num-roman-pairs
    (reduce
      (fn [[acc-str acc-n] [val sym]] (list (apply str acc-str (repeat (quot acc-n val) sym)) (rem acc-n val)))
      (list "" init))
     first
  )
)

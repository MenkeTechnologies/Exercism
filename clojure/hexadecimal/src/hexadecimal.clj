(ns hexadecimal)

(def hex-values '(\0 \1 \2 \3 \4 \5 \6 \7 \8 \9 \a \b \c \d \e \f))
(def parse-hex (zipmap hex-values (range 16)))

(defn hex-to-int
  [n]
  (if-not (every? (set hex-values) n)
    0
    (->> n
         seq
         (map parse-hex)
         (reduce #(+ (* %1 16) %2)))
    ))

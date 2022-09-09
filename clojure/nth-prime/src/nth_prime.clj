(ns nth-prime)
(def primes
  (cons 2 (->> 3
              (iterate (partial + 2))
              (filter #(not-any?
                    (comp zero? (partial rem %))
                    (range 3 (inc (Math/sqrt %)) 2))))))

(defn nth-prime [n]
  (if (pos? n)
    (nth primes (dec n))
    (throw (IllegalArgumentException.))))

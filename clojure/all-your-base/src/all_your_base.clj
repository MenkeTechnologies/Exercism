(ns all-your-base)

(defn- to-base-10 [n-list in-base]
  (reduce #(+ (* in-base %1) %2) 0 n-list))
(defn- from-base-10 [n out-base]
  (loop [dup n res ()]
    (let [q (quot dup out-base)
          res (cons (rem dup out-base) res)]
      (if (zero? q) res (recur q res)))))
(defn- guard [n-list in-base out-base]
  (and (seq n-list)
       (> out-base 1)
       (every? #(and (number? %)
                     (<= 0 % (dec in-base)))
               n-list)))
(defn convert [out-base n-list to-base]
  (when (guard n-list out-base to-base)
    (-> n-list
        (to-base-10 out-base)
        (from-base-10 to-base))))

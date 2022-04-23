(ns leap)

(defn leap-year? [y]
  (or (and (zero? (mod y 4))
           (not (zero? (mod y 100))) )
      (zero? (mod y 400)))
  )

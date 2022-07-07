(ns leap)

(defn leap-year? [year]
  (or
    (and
      (zero? (mod year 4))
      (pos? (mod year 100))
      )
    (zero? (mod year 400))))

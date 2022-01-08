(ns reverse-string)

(defn reverse-string [s]                                    ;; arguments vector...
  (apply str (reverse s))
  )

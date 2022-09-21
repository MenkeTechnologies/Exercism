
(ns phone-number)

(defn number [s]
  (let* (matcher (re-matcher #"^\s*(?:\+?1?\s*)?\(?([2-9]\d{2})\)?[-.\s]*([2-9]\d{2})[-.\s]*(\d{4})\s*$" s))
    (matches (re-find matcher)))
    (apply str matches)
  )

(defn area-code [n]
  (subs (number n) 0 3))

(defn pretty-print [n]
  (let [number (number n)]
    (apply str "(" (area-code n) ") " (subs number 3 6) "-" (subs number 6 10))))

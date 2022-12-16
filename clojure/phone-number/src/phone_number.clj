(ns phone-number)

(defn number [digits]
  (or
    (->> digits
         (re-seq #"\d")
         (apply str)
         (re-matches #"1?([2-9]\d\d[2-9]\d{6})")
         last)
    "0000000000"))

(defn area-code [digits]
  (-> (number digits)
      (subs 0 3)))

(defn pretty-print [digits]
  (->> digits
       (number)
       (re-matches #"(\d{3})(\d{3})(\d{4})")
       (rest)
       (apply format "(%s) %s-%s")))


(ns beer-song)
(defn verse [n]
  (case n
    0 (str "No more bottles of beer on the wall, no more bottles of beer.\n"
           "Go to the store and buy some more, 99 bottles of beer on the wall.\n")
    1 (str "1 bottle of beer on the wall, 1 bottle of beer.\n"
           "Take it down and pass it around, no more bottles of beer on the wall.\n")
    (str n " bottles of beer on the wall, " n " bottles of beer.\n"
         "Take one down and pass it around, " (dec n) " bottle" (if (> n 2) "s" "") " of beer on the wall.\n")))

(defn sing ([start] (sing start 0))
  ([start end]
   (->> (inc start)
        (range end)
        reverse
        (map verse)
        (clojure.string/join "\n"))))

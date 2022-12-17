(ns atbash-cipher)

(defn- is-letter? [c]
  (re-matches #"[a-z]|[A-Z]" c))

(defn- encode-char [c]
  (if (->> c str (is-letter?))
    (char (- (int \z) (- (int c) (int \a))))
    c))

(defn- alnum [w]
  (->> w (re-seq #"[a-z]+|[A-Z]|[0-9]+") (apply str)))

(defn- split-five [w]
  (re-seq #".{1,5}" w))

(defn encode [w]
  (->> w
    (clojure.string/lower-case)
    (alnum)
    (map encode-char)
    (apply str)
    (split-five)
    (clojure.string/join " ")))

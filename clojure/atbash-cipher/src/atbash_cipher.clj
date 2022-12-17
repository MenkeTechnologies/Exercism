(ns atbash-cipher (:require [clojure.string :as str]))

(defn- is-letter? [c] (re-matches #"[a-z]|[A-Z]" c))

(defn- encode-char [c]
  (if (->> c str is-letter?)
    (char (- (int \z) (- (int c) (int \a))))
    c))

(defn- alnum [w] (->> w (re-seq #"\w+") (apply str)))

(defn- split-five [w] (re-seq #".{1,5}" w))

(defn encode [w]
  (->> w
       str/lower-case
       alnum
       (map encode-char)
       (apply str)
       split-five
       (str/join " ")))

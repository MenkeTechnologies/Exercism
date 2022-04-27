(ns log-levels
  (:require [clojure.string :as str]))

(def log-regex #"\[(.*)\]:\s+(.*)\s*")

(defn message
  "Takes a string representing a log line
   and returns its message with whitespace trimmed."
  [s]
  (->> s
       str/trim
       (re-matches log-regex)
       (drop 2)
       (take 1)
       str/join
       )
  )

(defn log-level
  "Takes a string representing a log line
   and returns its level in lower-case."
  [s]
  (->> s
       (re-matches log-regex)
       (drop 1 )
       (take 1)
       str/join
       str/lower-case
       )
  )

(defn reformat
  "Takes a string representing a log line and formats it
   with the message first and the log level in parentheses."
  [s]
  (format "%s (%s)" (message s) (log-level s))
  )

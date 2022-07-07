(ns gigasecond
  (:import (java.time LocalDateTime)))

(def giga 1e9)

(defn from [year month day]
  (-> (LocalDateTime/of year month day 0 0)
      (.toInstant java.time.ZoneOffset/UTC)
      (.plusSeconds giga)
      (.atOffset java.time.ZoneOffset/UTC)
      (bean)
      ((juxt :year :monthValue :dayOfMonth))))

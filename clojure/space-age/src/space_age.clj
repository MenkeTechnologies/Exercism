(ns space-age)

(def SPY 31557600)
(defn space-age [earth-ratio seconds]
  (/ seconds (* SPY earth-ratio)))

(def on-mercury (partial space-age 0.2408467))
(def on-venus (partial space-age 0.61519726))
(def on-earth (partial space-age 1))
(def on-mars (partial space-age 1.8808158))
(def on-jupiter (partial space-age 11.862615))
(def on-saturn (partial space-age 29.447498))
(def on-neptune (partial space-age 164.79132))
(def on-uranus (partial space-age 84.016846))

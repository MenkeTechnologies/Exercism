(defmodule space-age
  (export (age-on 2)))

(defun planet-multiplier
  (('earth)     1.0)
  (('mercury)   0.2408467)
  (('venus)     0.61519726)
  (('mars)      1.8808158)
  (('jupiter)  11.862615)
  (('saturn)   29.447498)
  (('uranus)   84.016846)
  (('neptune) 164.79132))

(defun age-on (planet seconds)
  (/ seconds
     (* 31557600
        (planet-multiplier planet))))

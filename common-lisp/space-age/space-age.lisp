(defpackage :space-age
  (:use :cl)
  (:export :on-mercury
           :on-venus
           :on-earth
           :on-mars
           :on-jupiter
           :on-saturn
           :on-uranus
           :on-neptune))

(in-package :space-age)

(defconstant SPY 31557600)

(defmacro define-on-planet (on-planet factor)
  `(defun ,on-planet (seconds)
     (/ seconds ,SPY ,factor)))

(defparameter planet-ratios
  '((on-earth . 1.0)
    (on-mercury . 0.2408467)
    (on-venus . 0.61519726)
    (on-mars . 1.8808158)
    (on-jupiter . 11.862615)
    (on-saturn . 29.447498)
    (on-uranus . 84.016846)
    (on-neptune . 164.79132)))

  (loop for (name . factor) in planet-ratios
        do (eval `(define-on-planet ,name ,factor)))


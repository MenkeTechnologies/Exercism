(defpackage :resistor-color-duo
  (:use :cl)
  (:export :value))
(in-package :resistor-color-duo)

(defun value (lst)
  (let ((first (position (nth 0 lst) (colors) :test #'string=))
        (second (position (nth 1 lst) (colors) :test #'string=)))
       (+ (* first 10) second)))

(defun colors() '("black" "brown" "red" "orange" "yellow" "green" "blue" "violet" "grey" "white"))

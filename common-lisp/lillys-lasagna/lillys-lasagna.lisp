(defpackage :lillys-lasagna
  (:use :cl)
  (:export :expected-time-in-oven
           :remaining-minutes-in-oven
           :preparation-time-in-minutes
           :elapsed-time-in-minutes))

(in-package :lillys-lasagna)

(defun expected-time-in-oven ()
   "Return the expected oven time."
 337)

(defun remaining-minutes-in-oven (time)
   "Return for remaining time."
 (- (expected-time-in-oven) time))

(defun preparation-time-in-minutes (layers)
   "Return LAYERS * 19."
 (* layers 19))

(defun elapsed-time-in-minutes (layers time)
   "Return summary of working time."
 (+ (preparation-time-in-minutes layers) time))

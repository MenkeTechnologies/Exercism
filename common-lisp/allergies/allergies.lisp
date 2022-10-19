(in-package #:cl-user)
(defpackage #:allergies
  (:use #:common-lisp)
  (:shadow #:list)
  (:export #:allergic-to-p #:list))
(in-package #:allergies)

(defparameter *items*
  '("eggs" "peanuts" "shellfish" "strawberries" "tomatoes" "chocolate" "pollen" "cats"))

(defun list (mask)
    (loop for index from 0 below 8
       when (logbitp index mask) collect (elt *items* index)))

(defun allergic-to-p (mask allergy)
  (member allergy (list mask) :test #'string-equal))

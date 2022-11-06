(defpackage :queen-attack
  (:use :cl)
  (:export :valid-position-p
           :attackp))

(in-package :queen-attack)

(defun valid-position-p (coordinates)
  (let ((x (car coordinates)) (y (cdr coordinates)))
    (and (and (>= x 0) (< x 8))
         (and (>= y 0) (< y 8)))))

(defun attackp (white-queen black-queen)
  (let ((dx (abs (- (car white-queen) (car black-queen))))
        (dy (abs (- (cdr white-queen) (cdr black-queen)))))
    (and (and (valid-position-p white-queen)
              (valid-position-p black-queen))
         (or (zerop dx) (zerop dy) (= dx dy)))))

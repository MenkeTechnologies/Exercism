(defmodule darts
  (export (score 2)))

(defun score (x y)
  (let ((distance (math:sqrt (+ (* x x) (* y y)))))
    (cond ((> distance 10) 0)
          ((> distance 5) 1)
          ((> distance 1) 5)
          ('true 10))))

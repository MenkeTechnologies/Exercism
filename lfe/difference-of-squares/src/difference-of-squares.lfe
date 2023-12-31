(defmodule difference-of-squares
  (export (sum-of-squares 1) (square-of-sum 1)))

(defun square (n) (* n n))

(defun sum-of-squares (n) (lists:sum (lists:map (lambda (x) (square x)) (lists:seq 1 n))))

(defun square-of-sum (n) (square (lists:sum (lists:seq 1 n))))

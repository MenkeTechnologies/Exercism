(defmodule grains
  (export (square 1)
	  (total 0)))

(defun square (num)
  (trunc (math:pow 2 (- num 1))))

(defun total ()
  (lists:sum
   (lists:map #'square/1 (lists:seq 1 64))))

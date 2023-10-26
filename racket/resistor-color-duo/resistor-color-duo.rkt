#lang racket

(provide color-code)

(define color-values
  	'(("black" . 0)
	  ("brown" . 1)
	  ("red" . 2)
	  ("orange" . 3)
	  ("yellow" . 4)
	  ("green" . 5)
	  ("blue" . 6)
	  ("violet" . 7)
	  ("grey" . 8)
	  ("white" . 9)))

(define (value color) (cdr (assoc color color-values)))

(define (color-code color)
  (string->number
   (string-join (map (lambda (colo) (number->string (value colo))) (take color (min 2 (length color)))) "")))


#lang racket

(provide to-roman)

(define dict
  '(("M" . 1000) ("CM" . 900) ("D" . 500)
    ("CD" . 400) ("C" . 100) ("XC" . 90)
    ("L" . 50) ("XL" . 40) ("X" . 10)
    ("IX" . 9) ("V" . 5) ("IV" . 4) ("I" . 1)))

(define (to-roman number)
  (string-append*
    (for/list ([roman (in-list dict)])
      (define-values (q r) (quotient/remainder number (cdr roman)))
      (set! number r)
      (string-append* (make-list q (car roman))))))

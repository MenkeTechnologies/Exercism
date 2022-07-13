#lang racket

(provide convert)

(define dict '((3 . "Pling") (5 . "Plang") (7 . "Plong")))

(define (convert num)
  (define r (filter-map (lambda (pair)
                               (and (zero? (remainder num (car pair))) (cdr pair)))
                             dict))
  (if (null? r)
      (number->string num)
      (string-append* r)))

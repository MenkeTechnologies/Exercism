(import (rnrs))

(use-modules ((srfi srfi-1) #:select (any)))

(define (is-multiple? limit factors)
  (any (lambda (n) (zero? (modulo limit n))) factors))

(define (sum-of-multiples factors limit)
  (if (zero? limit)
      0
      (let ((factors (filter positive? factors)))
        (fold-left (lambda (total n) (if (is-multiple? n factors)
                                   (+ n total)
                                   total)) 0 (iota limit)))))

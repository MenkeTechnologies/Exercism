#lang racket

(provide collatz)

(define (collatz n)
 (if (not (exact-positive-integer? n)) (error "Invalid input")
  (if (= n 1) 0
   (if (zero? (modulo n 2)) (add1 (collatz (/ n 2)))
    (add1 (collatz (add1 (* 3 n))))))))

#lang racket

(provide hamming-distance)

(define (hamming-distance s1 s2)
 (count (negate equal?)
  (string->list s1) (string->list s2)))

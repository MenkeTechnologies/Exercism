#lang racket

(provide triangle?)

(define (triangle? sides kind)
  (match* (kind (length (remove-duplicates sides)))
          [(_ _)
           #:when (invalid? sides)
           #f]
          [('equilateral 1) #t]
          [('isosceles (or 1 2)) #t]
          [('scalene 3) #t]
          [(_ _) #f]))

(define (invalid? sides)
  (match (sort sides >)
         [(list 0 _ _) #t]
         [(list a b c)
          #:when (< (+ b c) a)
          #t]
         [_ #f]))

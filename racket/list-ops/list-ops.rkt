#lang racket

(provide my-length
         my-reverse
         my-map
         my-filter
         my-fold
         my-append
         my-concatenate)


(define (my-fold f init lst)
  (match lst
    ['() init]
    [(cons first rest)
     (my-fold f (f first init) rest)]))

(define (my-length lst)
  (my-fold (lambda (element count) (add1 count)) 0 lst))

(define (my-reverse lst)
  (my-fold cons empty lst))

(define (my-map f lst)
  (my-reverse (my-fold (lambda (element rest) (cons (f element) rest))
                       empty lst)))

(define (my-filter f lst)
  (my-reverse (my-fold (lambda (element rest)
                         (if (f element)
                             (cons element rest)
                             rest))
                       empty lst)))

(define (my-append lst1 lst2)
  (my-fold cons lst2 (my-reverse lst1)))

(define (my-concatenate list-of-lists)
  (my-fold my-append empty (my-reverse list-of-lists)))

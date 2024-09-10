#lang racket

(provide pangram?)

(define alphabet (string-split "abcdefghijklmnopqrstuvwxyz" #rx"" #:trim? #t))

(define (pangram? s)
  (define lc (string-downcase s))
  (for/and ([c (in-list alphabet)])
    (string-contains? lc c)))

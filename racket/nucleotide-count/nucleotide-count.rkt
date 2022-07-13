#lang racket

(provide nucleotide-counts)

(define dict '((#\A . 0) (#\C . 0) (#\G . 0) (#\T . 0)))

(define (nucleotide-counts dna)
  (foldl
   (lambda (nt acc)
     (dict-update acc nt add1))
   dict
   (string->list dna)))

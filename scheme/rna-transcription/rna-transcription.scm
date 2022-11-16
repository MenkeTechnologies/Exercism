(import (rnrs))

(define (conv c)
  (cond
    ((eq? c #\G) #\C)
    ((eq? c #\C) #\G)
    ((eq? c #\T) #\A)
    ((eq? c #\A) #\U)))

(define (dna->rna dna)
  (string-map conv dna))


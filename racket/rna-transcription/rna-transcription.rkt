#lang racket

(provide to-rna)

(define dict (hash #\C #\G #\G #\C #\A #\U #\T #\A))

(define (to-rna s)
    (list->string (map (lambda (c) (hash-ref dict c))
                       (string->list s))))

(import (rnrs))

(define (digit->number c)
  (- (char->integer c)
     (char->integer #\0)))

(define (exponent e)
  (lambda (b)
    (expt b e)))

(define (armstrong-number? n)
  (let* ((num-string (number->string n))
         (digits (string->list num-string))
         (len (string-length num-string)))
    (= n
     (fold-left + 0
                (map (exponent len)
                     (map digit->number digits))))))

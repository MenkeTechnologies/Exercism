(import (rnrs))

(define (ascii->integer c)
  (- (char->integer c) (char->integer #\0)))

(define (to-decimal s)
  (let loop ((letters (string->list s))
             (acc 0))
    (cond
     ((null? letters) acc)
     ((char<? (car letters) #\0) 0)
     ((char>? (car letters) #\2) 0)
     (else
      (loop (cdr letters) (+ (* acc 3) (ascii->integer (car letters))))))))

(import (rnrs))

(define word-map '((3 . "Pling")
                   (5 . "Plang")
                   (7 . "Plong")))

(define (word-combine n)
 (lambda (answer entry)
  (if (zero? (modulo n (car entry)))
   (string-append answer (cdr entry))
   answer))
 )

(define (convert number)
  (let ([answer (fold-left (word-combine number) "" word-map)])
   (or (and (string-null? answer)
        (number->string number))
    answer)))


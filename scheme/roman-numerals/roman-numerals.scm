(import (rnrs))
(define roman-numerals
  '((1000 . "M")
    (900 . "CM")
    (500 . "D")
    (400 . "CD")
    (100 . "C")
    (90 . "XC")
    (50 . "L")
    (40 . "XL")
    (10 . "X")
    (9 . "IX")
    (5 . "V")
    (4 . "IV")
    (1 . "I")))

(define (repeat thunk count)
  (when (> count 0)
    (thunk)
    (repeat thunk (- count 1))))

(define (roman number)
  (with-output-to-string
    (lambda ()
      (fold-left
       (lambda (remaining pair)
         (call-with-values (lambda () (div-and-mod remaining (car pair)))
           (lambda (count remaining)
             (repeat (lambda () (display (cdr pair))) count)
             remaining)))
       number
       roman-numerals))))


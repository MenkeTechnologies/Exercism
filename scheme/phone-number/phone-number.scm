(import (rnrs))

(define (validate-10-digits digits)
  (and (= (string-length digits) 10)
       (char>? (string-ref digits 0) #\1)
       (char>? (string-ref digits 3) #\1)
       digits))

(define (validate digits)
  (or (and (= 11 (string-length digits))
           (char=? #\1 (string-ref digits 0))
           (validate-10-digits (string-take-right digits 10)))
      (validate-10-digits digits)))

(define (clean phone-number)
  (let ([digits (string-filter char-numeric? phone-number)])
    (or (validate digits)
        (raise-exception 'invalid))))

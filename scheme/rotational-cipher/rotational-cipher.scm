(import (rnrs))

(define (rotate-alphabetic-char c amt base)
  (integer->char
    (+ (mod (+ (- (char->integer c) (char->integer base)) amt) 26)
       (char->integer base))))

(define (rotate-uppercase c amt)
  (rotate-alphabetic-char c amt #\A))

(define (rotate-lowercase c amt)
  (rotate-alphabetic-char c amt #\a))

(define (rotate-char amt)
  (lambda (c)
    (cond
      ((char-lower-case? c) (rotate-lowercase c amt))
      ((char-upper-case? c) (rotate-uppercase c amt))
      (else c))))

(define (rotate s amt)
  (list->string (map (rotate-char amt) (string->list s))))

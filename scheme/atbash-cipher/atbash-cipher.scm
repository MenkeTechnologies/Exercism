(import (rnrs))

(define (charindex c)
  (if (char? c)
    (- (char->integer c) (char->integer #\a))
    (integer->char (+ c (char->integer #\a)))))

(define (tx c)
  (mod (- (+ (charindex c) 1)) 26))

(define (recode c)
  (if (char-alphabetic? c)
    (charindex (tx (char-downcase c)))
    c))

(define (add-spaces s)
  (letrec ([loop (lambda (lst cnt)
    (cond [(null? lst) '()]
          [(> cnt 5) (cons #\space (loop lst 1))]
          [(cons (car lst) (loop (cdr lst) (+ cnt 1)))]))])
    (list->string (loop (filter (lambda (e) (or (char-numeric? e) (char-alphabetic? e))) (string->list s)) 1))))

(define (encode s)
  (add-spaces (string-map recode (string-delete #\space s))))

(define (decode s)
  (string-map recode (string-delete #\space s)))


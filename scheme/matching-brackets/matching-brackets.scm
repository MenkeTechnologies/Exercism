(import (rnrs))
(define make-stack
  (lambda ()
    (let ((stk '()))
      (lambda (message . args)
        (case message
          ((empty?) (null? stk))
          ((push!) (set! stk (cons (car args) stk)))
          ((top) (if (null? stk)
                   (raise-exception "top: The stack is empty.")
                   (car stk)))
          ((pop!) (if (null? stk)
                    (raise-exception "pop!: The stack is empty.")
                    (let ((result (car stk)))
                      (set! stk (cdr stk))
                      result)))
          (else (raise-exception "stack: unrecognized message")))))))

(define bracket-map '((#\) . #\()
                      (#\] . #\[)
                      (#\} . #\{)))

(define (valid-stack? stack c)
  (let ([matching-bracket (assq-ref bracket-map c)])
    (and (not (stack 'empty?))
         matching-bracket
         (char=? (stack 'top) matching-bracket))))

(define (balanced? string)
  (let ([stack (make-stack)])
    (let loop ([chars (string->list string)])
      (if (null? chars)
        (stack 'empty?)
        (let ([c (car chars)]
              [tail (cdr chars)])
          (case c
            ((#\( #\[ #\{) (stack 'push! c) (loop tail))
            ((#\) #\] #\}) (and (valid-stack? stack c)
                                (stack 'pop!)
                                (loop tail)))
            (else (loop tail))))))))

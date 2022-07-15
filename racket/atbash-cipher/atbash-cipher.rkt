#lang racket
(require srfi/13)

(provide encode decode)

(define (decode s)
  (let* ([rev-char (compose1 integer->char
                             (curry + (char->integer #\a))
                             (curry - (char->integer #\z))
                             char->integer)]
         [convert (match-lambda
                    [(? char-alphabetic? c) (rev-char c)]
                    [(? char-numeric? c) c]
                    [_ #f])])
    (list->string (filter-map convert
                              (string->list (string-downcase s))))))

(define (encode s)
  (string-join (regexp-match* #px".{5}|.+" (decode s)) " "))

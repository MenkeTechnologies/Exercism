(import (rnrs)
        (srfi srfi-1))

(define (word-count s)
  (let* ((words (string-tokenize s (char-set-adjoin char-set:letter+digit #\')))
         (trimmed (map (lambda (word)
                       (string-downcase
                         (string-trim-both word (char-set-union char-set:punctuation))))
                     words))
         (not-null (filter (compose not string-null?) trimmed)))
    (fold (lambda (word acc)
            (assoc-set! acc word (+ 1 (or (assoc-ref acc word) 0))))
          '()
          not-null)))

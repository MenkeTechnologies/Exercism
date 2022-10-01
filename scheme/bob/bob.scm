(import (rnrs))

(define (yell? msg)
    (let ((letters (string-filter char-set:letter msg)))
        (and (not (string-null? letters))
            (string-every char-set:upper-case letters))))

(define (question? msg)
    (let* ((trimmed (string-trim-right msg char-set:whitespace))
            (found (string-rindex trimmed #\?)))
        (and found (= found (- (string-length trimmed) 1)))))

(define (response-for msg)
  (cond
    ((and (question? msg) (yell? msg)) "Calm down, I know what I'm doing!")
    ((question? msg) "Sure.")
    ((yell? msg) "Whoa, chill out!")
    ((string-every char-set:whitespace msg) "Fine. Be that way!")
    (else "Whatever.")))

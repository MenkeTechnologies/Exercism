(import (rnrs)
        (except (srfi srfi-1) map))

(define dict '((#\A . 0)
                (#\C . 0)
                (#\G . 0)
                (#\T . 0)))

(define (nucleotide-count dna)
  (define (update c acc)
    (let ((matched (assoc c acc)))
      (alist-cons c (+ 1 (cdr matched)) (alist-delete c acc))))
  (string-fold update dict dna))

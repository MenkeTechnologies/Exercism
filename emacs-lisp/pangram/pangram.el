(provide 'pangram)

(require 'seq)

(defun is-pangram (s)
 (seq-every-p (apply-partially #'seq-contains-p (downcase s)) (number-sequence ?a ?z)))

(provide 'hamming)
(require 'seq)

(defun hamming-distance (s1 s2)
 (if (= (length s1) (length s2))
  (seq-count #'not (seq-mapn #'= s1 s2))
   (error "DNA strands are of unequal lengths")))

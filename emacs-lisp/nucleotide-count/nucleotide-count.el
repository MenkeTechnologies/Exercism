(provide 'nucleotide-count)

(defconst init-counter '((?A . 0) (?C . 0) (?G . 0) (?T . 0)))

(defun nucleotide-count (s)
 (let ((counter (copy-alist init-counter)))
  (dolist (nt (string-to-list s) counter)
   (cl-incf (alist-get nt counter)))))


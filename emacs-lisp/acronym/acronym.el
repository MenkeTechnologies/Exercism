(provide 'acronym)

(require 'cl-lib)

(defun acronym (s)
 (upcase
   (mapconcat (lambda (w) (substring w 0 1))
    (split-string s "[-_\s]")
    "")))

(defun isogramp (s) (not (string-match-p "\\(\\w\\).*\\1" s)))

(provide 'isogram)

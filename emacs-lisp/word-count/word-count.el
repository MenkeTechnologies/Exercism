(require 'seq)

(defun word-count (s)
  (let* ((word-list (mapcar #'downcase (split-string (replace-regexp-in-string
                                                       "[^a-zA-Z0-9' ]" "" s))))
         (uniq-list (seq-uniq word-list)))
    (seq-map (lambda (w) (cons w (seq-count (lambda (w2) (string= w w2))
                                            word-list)))
             uniq-list)))

(provide 'word-count)

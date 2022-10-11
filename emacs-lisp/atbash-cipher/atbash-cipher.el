(require 'subr-x)

(defun encode (s)
  (string-trim
   (replace-regexp-in-string
    ".\\{5\\}"
    (lambda (s) (concat s " "))
    (apply 'string
           (mapcar
            (lambda (c) (if (>= ?z c ?a) (abs (- c ?a ?z)) c))
            (replace-regexp-in-string "[^a-z0-9]" "" (downcase s)))))))

(provide 'atbash-cipher)

(require 'cl)

(defun convert (n)
 (let* (
    (facts '((3 . "Pling") (5 . "Plang") (7 . "Plong")))
    (r (mapconcat (lambda (f) (if (zerop (mod n (car f))) (cdr f))) facts ""))
    )
        (if (string= "" r)
            (number-to-string n)
            r)
    )
 )

(provide 'raindrops)

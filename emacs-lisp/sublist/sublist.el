(defun is-start-of (lst1 lst2)
  (or (null lst1)
      (and (not (null lst1))
           (equal (car lst1) (car lst2))
           (is-start-of (cdr lst1) (cdr lst2)))))

(defun is-sublist-of (lst1 lst2)
  (if (null lst2) (null lst1)
    (or (is-start-of lst1 lst2) (is-sublist-of lst1 (cdr lst2)))))

(defun list-classify (lst1 lst2)
  (let ((is12 (is-sublist-of lst1 lst2))
        (is21 (is-sublist-of lst2 lst1)))
    (if is12
        (if is21 :equal :sublist)
      (if is21 :superlist :unequal))))

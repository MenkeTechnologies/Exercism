(defun rotate-char (c key)
  (cond ((<= ?A c ?Z) (+ ?A (% (+ (- c ?A) key) 26)))
        ((<= ?a c ?z) (+ ?a (% (+ (- c ?a) key) 26)))
        (c)))

(defun rotate (s shift-key)
  (concat (mapcar (lambda (c) (rotate-char c shift-key)) s) ""))

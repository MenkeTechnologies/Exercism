(defun valid-triangle-p (sides)
  "Check if the sides form a valid triangle."
  (let ((a (nth 0 sides))
        (b (nth 1 sides))
        (c (nth 2 sides)))
    (and (> a 0) (> b 0) (> c 0)
         (>= (+ a b) c)
         (>= (+ b c) a)
         (>= (+ a c) b))))

(defun equilateralp (sides)
  "Check if the triangle is equilateral."
  (and (valid-triangle-p sides)
       (= (length (delete-dups sides)) 1)))

(defun isoscelesp (sides)
  "Check if the triangle is isosceles."
  (and (valid-triangle-p sides)
       (<= (length (delete-dups sides)) 2)))

(defun scalenep (sides)
  "Check if the triangle is scalene."
  (and (valid-triangle-p sides)
       (= (length (delete-dups sides)) 3)))

(provide 'triangle)

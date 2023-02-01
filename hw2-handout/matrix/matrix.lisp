; You may define helper functions here
(defun for-multiply (mat1 mat2)
    (mapcar #'(lambda (x)(apply #'+ (mapcar #'* mat1 x))) mat2))

(defun matrix-add (mat1 mat2)
   (cond ((and (null mat1)
		       (null mat2))
		  nil)
		 (t (mapcar #'(lambda (x y) (mapcar #'+ x y)) mat1 mat2))))

(defun matrix-transpose (mat)
  (cond ((or (null mat) (null (car mat)))
		  nil)
		 (t (cons (mapcar #'car mat)
			  (matrix-transpose (mapcar #'cdr mat))))))

			  
(defun matrix-multiply (mat1 mat2)
	(let ((temp nil))
			(setq temp (matrix-transpose mat2))
			(mapcar #'(lambda (x) (for-multiply x temp)) mat1)))


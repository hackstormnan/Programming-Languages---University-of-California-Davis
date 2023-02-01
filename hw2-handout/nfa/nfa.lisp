(defun reachable (transition start final input) 
    (cond ((null input)(nfa-eq start final)) 
          (t (progn
				(setq next (funcall transition start (car input))) 
				(nfa-rest transition next final (cdr input))))))

				
(defun nfa-eq(state1 state2)
	(cond ((eq state1 state2) t)))
	
	
	
(defun nfa-rest (transition rest final input)
    (cond ((null input)
			(nfa-true-list (setq lst (mapcar #'(lambda (state) (eq state final)) rest))))
          (t (or 
				(reachable transition (car rest) final input)
				(nfa-check-rest transition (cdr rest) final input)))))
				
				
(defun nfa-true-list (lst)
	(cond
		((null lst) nil)
		((car lst) t)
		(t (nfa-true-list (cdr lst)))))



(defun nfa-check-rest (transition rest final input)
	(cond 
		((null (car rest)) nil)
		( t (or 
				(reachable transition (car rest) final input)
				(nfa-check-rest transition (cdr rest) final input)))))
			
			

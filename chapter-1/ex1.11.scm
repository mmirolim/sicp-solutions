;; implement two procedures one recursive another one iterative
;; for computing given function

;; recursive implementation
(define (func n)
  (cond ((< n 3) n)
	(else (+ (func (- n 1)) (* 2 (func (- n 2))) (* 3 (func (- n 3)))))))

;; iterative implementation
(define (func-iter n) (f-iter 0 1 2 n))
;; iterator
(define (f-iter a b c n)
  (cond ((= n 0) a)
	((< n 0) n)
	(else (f-iter b c (+ c (* 2 b) (* 3 a)) (- n 1)))))

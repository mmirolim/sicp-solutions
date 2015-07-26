;; improve fast-iter for computing exponents
(define (fast-exp b n) (iter 1 b n))
;; even check procedure
(define (even n)
  (= (remainder n 2) 0))
;; iterator
(define (iter a b n)
  (cond ((= n 0) a)
	((even n) (iter a (* b b) (/ n 2)))
	(else (iter (* a b) b (- n 1)))))

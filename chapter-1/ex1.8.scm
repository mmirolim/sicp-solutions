;; write procedure to find cube-root
(define (cube-root x)
  (iter 1.0 x))

;; iter procedure to loop for an answer
(define (iter guess x)
  (if (good-enough guess x)
      guess
      (iter (improve guess x) x)))

;; improve guess with Newton method
(define (improve guess x)
  (/ (+ (/ x (* guess guess)) (* 2 guess)) 3))

;; check guess for required precision
(define (good-enough guess x)
  (< (abs (- (* guess guess guess) x)) 0.001))

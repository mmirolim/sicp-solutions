;; Count change (usd) recursive algorithm
;; it's slow not efficient but easy to implement
;; Task to count number of changes with penny, nickels
;; dimes, quarters and half-dollars
(define (count-change amount) (change-iter amount 5))

;; define recursive iterator for changes
(define (change-iter amount kinds-of-coins)
;; degenerate cases should be specified
;; if a == 0 we should count as 1
  (cond ((= amount 0) 1)
;; if a < 0 or kinds-of-coins == 0 then there is 0 ways to make change
	((or (< amount 0) (= kinds-of-coins 0)) 0)
	(else (+ (change-iter amount (- kinds-of-coins 1)) 
		 (change-iter (- amount (first-denomination kinds-of-coins)) kinds-of-coins)))))

;; get coin denomination
(define (first-denomination kinds-of-coins)
  (cond ((= kinds-of-coins 1) 1)
	((= kinds-of-coins 2) 5)
	((= kinds-of-coins 3) 10)
	((= kinds-of-coins 4) 25)
	((= kinds-of-coins 5) 50)))

;Factorials with counter
;2020-01-22
;This is the linear iterative process for computing factorials

(define (factorial n)
	(fact-iter 1 1 n))

(define (fact-iter product counter max-count)
	(if (> counter max-count)
		product
		(fact-iter (* counter product) 
				   (+ counter 1)
					max-count)))
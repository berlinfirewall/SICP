;Fibonacci Sequence
;2021-01-29

(define (fib n)
	(cond ((= n 0) 0)
		  ((= n 1) 1)
		  (else (+ (fib (- n 1))
				   (fib (- n 2))))))


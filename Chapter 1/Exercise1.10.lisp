;Exercise 1.10
;2021-01-28
;Ackermann's function

(define (A x y)
	(cond ((= y 0) 0) ;if y=0 return 0
		((= x 0)(* 2 y)) ;if x=0 return 2y
		((= y 1) 2) ;if y=1 return 2
		(else (A (- x 1) 
			(A x (- y 1)))))) ;else (A(x-1, A(x,(y-1))))

;(A 1 10) ;1024
;(A 2 4) ;65536
;(A 3 3) ;65536

(define (f n) (A 0 n)) ;2n
(define (g n) (A 1 n)) ;2^n
(define (h n) (A 2 n)) ;h(n)=2^(h(n-1))
(define (k n) (* 5 n n)) ;5n^2
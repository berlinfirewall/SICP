;1.1.7 Newton's Method Square Roots
;2021-01-17

(define (sqrt-iter guess x)
	(if (good-enough? guess x) ;if good-enough=true return the guess
		guess
		(sqrt-iter (improve guess x) ;else, do it all again but with the guess
			x)))

(define (improve guess x)
	(average guess (/ x guess))) ;average the guess and x/guess

(define (average x y)
	(/ (+ x y) 2)) ;(x+y)/2

(define (good-enough? guess x)
	(< (abs (- (square guess) x)) 0.001)) ;is the square of the guess minus the number greater than 0.001

(define (square x)
	(* x x)) ;x*x

(define (sqrt x)
	(sqrt-iter 1.0 x)) ;initial guess of 1
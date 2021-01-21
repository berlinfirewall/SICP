;Exercise 1.6
;2021-01-17

(define (new-if predicate then-clause else-clause)
	(cond (predicate then-clause)
		(else else-clause)))

(define (sqrt-iter guess x)
	(new-if (good-enough? guess x)
		guess
		(sqrt-iter (improve guess x)
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

;Because in applicative order evaluation (what is used by LISP), all user-defined arguments are evaluated 
;before the function is itself evaluated. Because of the else clause is defined as itself, it is infinitely
;evaluated 
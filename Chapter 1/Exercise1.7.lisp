;Exercise 1.7
;2020-01-20

(define (sqrt-iter guess x oldguess)
	(if (good-enough? guess oldguess) ;if good-enough=true return the guess
		guess
		(sqrt-iter (improve guess x) x guess))) ;if false, run the loop again, passing the improved guess, the number, and the old guess

(define (improve guess x)
	(average guess (/ x guess)));average the guess and x/guess

(define (average x y)
	(/ (+ x y) 2)) ;(x+y)/2

(define (good-enough? guess oldguess)
	(< (abs (- guess oldguess)) 0.000001)) ;is difference between the guess and the old guess less than 0.000001

(define (square x)
	(* x x)) ;x*x

(define (sqrt x)
	(sqrt-iter 1.0 x 0)) ;initial guess of 1, old guess of 0

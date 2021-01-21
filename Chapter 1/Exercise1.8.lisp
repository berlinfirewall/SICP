;Exercise 1.8
;2020-01-20

(define (cbrt-iter guess x oldguess)
	(if (good-enough? guess oldguess) ;if good-enough=true return the guess
		guess
		(cbrt-iter (improve guess x) x guess))) ;if false, run the loop again, passing the improved guess, the number, and the old guess

(define (improve guess x)
	(average x guess));put the number and the guess into the formula

(define (average x y)
	(/ (+ (/ x (* y y)) (* 2 y)) 3)) ;((x/y^2)+2y)/3

(define (good-enough? guess oldguess)
	(< (abs (- guess oldguess)) 0.000001)) ;is difference between the guess and the old guess less than 0.000001

(define (cube x)
	(* x x x)) ;x*x*x

(define (cbrt x)
	(cbrt-iter 1.0 x 0)) ;initial guess of 1, old guess of 0

;Exercise 1.5
;2021-01-16

(define (p) (p))
(define (test x y)
	(if (= x 0)
		0
		y))

(test 0 (p))

;Under normal order evaluation, the arguments are fully expanded then reduced. Although p would not 
;be returned at the end as 0=0, because normal order evaluation is used, it is still evaluated. 
;Because p is defined as itself (recursively) the interpreter will infinitely keep evaluating p.
;
;Under applicative order, the arguments are evaluated and then applied, function test is evaluated
;first, and 0 is returned. Because 0 is returned, p has no need to be evaluated.
;Exercise 1.4
;2021-01-16

(define (a-plus-abs-b a b)
	((if (> b 0) + -) a b))


;if b is positive, return a addition operator to add a and b,
;if b is negative, return a subtraction operator to add the absolute value (double negatives)

(a-plus-abs-b 3 -4)
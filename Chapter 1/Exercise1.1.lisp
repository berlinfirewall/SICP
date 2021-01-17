;Exercise 1.1
;2021-01-16

(+ 5 3 8 4) ;20
(- 9 1) ;8
(/ 6 2) ;3
(+ (* 2 4) (- 4 6)) ;6

(define a 3)
(define b (+ a 1))
(+ a b (* a b)) ;19

(= a b) ;#F

(if (and (> b a) (< b (* a b))) ;if (b > a) and (b < a*b) 
	b  ;then return b
	a ;else return
) ;4

(cond ((= a 4) 6) ;if a=4 return 6
	  ((= b 4) (+ 6 7 a)) ;if b=4 return a+6+7 (16)
	  (else 25) ;else return 25
);16

(+ 2 (if (> b a) b a)) ; if (b > a), return 2+b else return 2+a
;6 (b+2)

(* (cond ((> a b) a) ; multiply result of condition (if a>b return a)
		 ((< a b) b) ; if (a < b) return b
		 (else -1)) ; else return -1
	(+ a 1) ; other operand of multiplication (result of condition)*(1+a)
) ; returns 16 (b * (1+a))
;Factorials
;2020-01-21
;This is a linear recursive process for computing a factorial

(define (factorial n)
	(if (= n 1)
		1 ;return 1 if n=1
		(* n (factorial (- n 1))))) ;n*!(n-1)
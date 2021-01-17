;Exercise 1.2
;2021-01-16

(define x 9)
(define y 1)
(define z 4)

(define greatest (if (and (> x y) (> x z)) x ;return x if x>y and x<z
					(if (> y z) y z) ;return y if y>z, else return z
))
(define lowest (if (and (< x y) (< x z)) x ; return x if x<y and x<z
					(if (< y z) y z) ;return y if y<z, else return z
))
(define middle (if 
					(and (< x greatest) (> x lowest)) x ; if x<greatest and x<lowest, return x
					(if (and (< y greatest) (> y lowest)) y z) ;return y if y<greatest and y>lowest, else return z
))

(* greatest greatest) ;square greatest
(* middle middle) ;square middle
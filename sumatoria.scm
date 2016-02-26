(define (serie N S) (serie1 N 1 S 1 0.0))
(define (serie1 N I S SG T)
	(if (> I N) T
		(serie1 N (+ I 1) S (* SG S) (+ T (* SG (/ I (* I 1.0))))))
)

#lang racket
(define (even?? g)(if(even? g)0 1))
(define (same-parity g . w)
  (define (iter f w)
  (if(null? w)
    f
    (if(= (even?? g)(even?? (car w)))
        (iter (append f (list(car w)))(cdr w))
        (iter f (cdr w)))))
  (iter (list g) w))
;;;test
(same-parity 1 2 3 4 5 6 7)
(same-parity 2 3 4 5 6 7 8 9 10 11 12)

#lang racket
;;;make interval
(define (make-interval a b)(cons a b))
;;;lower and upper bound
(define (lower-bound x)(car x))
(define (upper-bound x)(cdr x))
;;;multi interval
(define (mul-interval x y)
  (let((p1(*(lower-bound x)(lower-bound y)))
       (p2(*(lower-bound x)(upper-bound y)))
       (p3(*(upper-bound x)(lower-bound y)))
       (p4(*(upper-bound x)(upper-bound y))))
    (make-interval (min p1 p2 p3 p4)
                   (max p1 p2 p3 p4))))
;;;div interval
(define (div-interval x y)
  (if(and (<= (lower-bound y) 0)(> (upper-bound y) 0))
     (error "interval can not contain '0'")
      (mul-interval x (make-interval (/ 1 (upper-bound y))
                                     (/ 1 (lower-bound y))))))
;;;test
(define i1 (make-interval 2 3))
(define i2 (make-interval 1 4))
(define i3 (make-interval -1 3))
(div-interval i1 i2)
(div-interval i1 i3)

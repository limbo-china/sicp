#lang racket
;;如果x为最小，则计算y和z，否则递归调用 y z x
(define (max-squares x y z)
  (cond ((and (<= x y)(<= x z)) (+(* y y)(* z z)))
        (else (max-squares y z x))))
(max-squares 1s2 2s4 3s3)
#lang racket
;;;根据基本算术定理,每个正整数都可以被分解为唯一的素数相乘序列,
;;;我们可以利用这一点,通过分解 cons 计算出的整数的序列,从而复原 car 和 cdr 。
;;;举个例子， 72 可以分解成 72=23∗32=2∗2∗2∗3∗3 ，
;;;要取出 car ，我们就不断地进行除二操作，每次除二进行一次计数，
;;;直到不能除尽为止，这时的计数值就是 car 的值：
(define (cons x y)
  (* (expt 2 x)
     (expt 3 y)))
(define (car z)
  (if(= (remainder z 2) 0)
     (+ 1 (car (/ z 2)))
     0))
(define (cdr z)
  (if(= (remainder z 3) 0)
     (+ 1 (cdr (/ z 3)))
     0))

;;;test
(car (cons 2 3))
(cdr (cons 2 3))
(cdr (cons 5 6))
(car (cons 5 6))
#lang racket

; 1. Re-write the following expressions in Racket and evaluate them
;    using a Racket interpreter/compiler.

; (a) (3 × (5 + (10 ÷ 5)))
(* 3(+ 5(/ 10 5)))

; (b) (2 + 3 + 4 + 5)
(+ 2 3 4 5)

; (c) (1 + (5 + (2 + (10 ÷ 3))))
(+ 1 5 2 (/ 10 3))

; (d) (1 + (5 + (2 + (10 ÷ 3.0))))
(+ 1 5 2 (/ 10 3.0))

; (e) (3 + 5) × (10 ÷ 2)
(*(+ 3 5)(/ 10 2))

; (f) (3 + 5) × (10 ÷ 2) + (1 + (5 + (2 + (10 ÷ 3))))
(+ (* (+ 3 5) (/ 10 2)) (+ 1 5 2 (/ 10 3)))

; 2. Define a procedure discount that takes two arguments: an item’s initial
;    price and a percentage discount [2]. It should return the new price:

(define (discount original discount)
  (* original (- 1 (/ discount 100.0))))

(discount 10 5)
(discount 29.90 50)

; 3. Define a function grcomdiv that takes two integers and returns their greatest common divisor.
;    Code Adapted from https://github.com/acmeism/RosettaCodeData/blob/master/Task/Greatest-common-divisor/Racket/greatest-common-divisor-2.rkt

(define (grcomdiv a b)
  (if (= b 0)
      a
      (grcomdiv b (modulo a b))))

(grcomdiv 10 15)
(grcomdiv 64 30)  

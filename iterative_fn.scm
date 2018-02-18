#!/usr/bin/env guile -e
!#

;; -*- mode: snippet -*-
;; name: fn.scm
;; key: 
;; binding: 
;; expand-env: ((some-var some-value))
;; --

;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;; This program computes following function

;; f(n) = n for n< 3 and f(n) = f(n - 1) + 2f(n - 2) + 3f(n - 3) iteratively

;; start1 holds f(n - 1), start2 holds f(n - 2) and start3 holds f(n - 3)
;; TODO: improve it for arbitrary no. of functions on RHS of function.

(use-modules (ice-9 pretty-print))

(define (f-iter start1 start2 start3 count)
  (pretty-print start1)
  (if (< count 3)
     start1
     (f-iter (+ start1 (* 2 start2) (* 3 start3)) start1 start2 (- count 1))))

(define (f n)
  (if (< n 3)
      n
      (f-iter 2 1 0 n))
  )

(display (f 4))
(newline)
(display (f 5))
(newline)

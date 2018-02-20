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

;; This program implements iterative Factorial version. Copied from SICP
;; book.

(define (fact-iter product counter max-count)
  (if (> counter max-count)
      product
      (fact-iter (* counter product)
                 (+ counter 1)
                 max-count)))

(define (fact n)
  (fact-iter 1 1 n))

(display (fact 1))
(newline)
(display (fact 2))
(newline)
(display (fact 3))
(newline)
(display (fact 4))
(newline)
(display (fact 5))
(newline)
(display (fact 6))
(newline)
(display (fact 7))
(newline)
(display (fact 8))
(newline)
(display (fact 9))
(newline)
(display (fact 10))
(newline)
(display (fact 100))
(newline)
(display (fact 5000))
(newline)
(display (fact 200000))
(newline)
(display (fact 0))
(newline)
(display (fact -2))
(newline)

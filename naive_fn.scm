#!/usr/bin/env guile -e
!#

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

;; this program computes follwing function

;; f(n) = 3 for n< 3 and f(n) = f(n - 1) + 2f(n - 2) + 3f(n - 3) iteratively
;; naive version. untested code. TODO: write test code.

(define (f n)
  (cond (
         (< n 3) n)
        (+ (f (- n 1)) (* 2 (f (- n 2))) (* 3 (f (- n 3)))
           )
        )
  )
   
(display (f 2))
(newline)
(display (f 10))
(newline)

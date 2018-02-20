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

;; This program implements naive Factorial version. TODO: Else of outer if is
;; not written, fix it.

(define (fact n)
  (if (< n 0)(display "Please enter positive number")
  (if (= n 0)
      1
      (* n (fact (- n 1))))))

(display (fact 1))
(newline)
(display (fact 2))
(newline)
(display (fact 3))
(newline)
(display (fact 4))
(newline)
(display (fact 0))
(newline)
(display (fact -2))
(newline)

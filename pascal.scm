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

;; This program implements Pascal's triangle.
;; Learn formatting to print it nicely. We use binomial
;; coefficients property to print these


(use-modules (ice-9 format))

(define (print-pascal n)
  (display "Printing Pascal's triangle")(newline)

  )

(define (pascal n)
  (cond ((< n 1) (display "Please enter a positive number.") (newline))
        ((> n 0)(print-pascal n))))

(pascal 1)
(pascal 2)
(pascal -5)

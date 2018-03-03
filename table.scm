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

;; This program prints table of a value.

(define (table i n)

  (cond
   [(> i 10) '()]
   [else (display (* i n))(newline)(table (+ i 1) n)])
  )

(table 1 2)
(table 1 23)
(table 1 3)
(table 1 6)
(table 1 10)
(table 1 28634786328756423)

;;;; Describe program with 4

;;; Basic comment with 3
;; Indented comment with 2
; After a line of code with 1
#||
Multiline comment
||#

;;; Print text.
(format t "Hello friend.~%")
;;; Print quoted text.
(print "What's your name?")

;;; Variable symbols: letters numbers + - _ * = < > ? !
;;; Lisp isn't case sensitive
;;; Global variables are usually put between `*`.

;;; Read a variable.
(defvar *name* (read))

;;; Declare a function.
(defun hello-you (name)
  (format t "Hello ~a.~%" name))

;;; Placeholders
;;; ~a - show a value
;;; ~s - show quotes around a value
;;; ~10a - add 10 spaces on the right
;;; ~10@a - add 10 spaces on the left

;;; Transform output.
(setq *print-case* :capitalize)
;;; More ways: :upcase :downcase

;;; Call a function.
(hello-you *name*)

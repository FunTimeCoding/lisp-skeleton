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

;;; Forms
;;; A form is a list with a command function name at the beginning.
(format t "(+ 5 4) = ~d~%" (+ 5 4))
;;; Nest operations.
(format t "(+ 5 (- 6 2)) = ~d~%" (+ 5 (- 6 2)))

;;; Everything is a list.
;;; Lists are held in con-cells.
;;; Con-cells is short for consecutive cells.
;;; [+] [5] [4] [nil]

;;; Variables
;;; Define a variable.
(defvar *number* 0)
;;; Change a variable.
(setf *number* 6)

;;; New line character: ~%
(format t "Number with commas ~:d~%" 1000000)
(format t "PI to 5 characters ~5f~%" 3.141593)
(format t "PI to 4 decimals ~,4f~%" 3.141593)
(format t "10 Percent ~,,2f~%" .10)
(format t "10 Dollars ~$~%" 10)

;;; Math functions
(+ 5 4)
;;; More operations: + - * / rem mod
;;; This will show a fraction.
(format t "(/ 5 4) = ~d~%" (/ 5 4))
;;; Display a float.
(format t "(/ 5 4.0) = ~d~%" (/ 5 4.0))
(format t "(expt 4 2) = ~d~%" (expt 4 2))
(format t "(sqrt 81) = ~d~%" (sqrt 81))
(format t "(exp 1) = ~d~%" (exp 1))
(format t "(eq 'dog 'dog) = ~d~%" (eq 'dog 'dog))
(format t "(floor 5.5) = ~d~%" (floor 5.5))
(format t "(ceiling 5.5) = ~d~%" (ceiling 5.5))
(format t "(max 5 10) = ~d~%" (max 5 10))
(format t "(min 5 10) = ~d~%" (min 5 10))
(format t "(oddp 15) = ~d~%" (oddp 15))
(format t "(evenp 15) = ~d~%" (evenp 15))
(format t "(numberp 2) = ~d~%" (numberp 2))
(format t "(null nil) = ~d~%" (null nil))
;;; More math functions: sin, cos, tan, asin, acos, atan

(defparameter *myName* 'Sue)
(format t "(eq *myName* 'Sue) = ~d~%" (eq *myName* 'Sue))
;;; T is true, Nil is false

(format t "(equal 'car 'truck) = ~d~%" (equal 'car 'truck))
(format t "(equal 10 10) = ~d~%" (equal 10 10))
(format t "(equal 5.5 5.3) = ~d~%" (equal 5.5 5.3))
(format t "(equal \"string\" \"String\") = ~d~%" (equal "string" "String"))
(format t "(equal 5.5 5.3) = ~d ~%" (equal 5.5 5.3))
(format t "(equal (list 1 2 3) (list 1 2 3)) = ~d~%" (equal (list 1 2 3) (list 1 2 3)))

;;; Compare different types.
(format t "(equalp 1.0 1) = ~d ~%" (equalp 1.0 1))
(format t "(equalp \"string\" \"String\") = ~d~%" (equalp "string" "String"))

(defvar *age* 18)
;;; Relational operators: > < >= <=
(if (= *age* 18)
    (format t "You can vote.~%")
    (format t "You can't vote.~%"))
(if (not (= *age* 18))
    (format t "You can't vote.~%")
    (format t "You can vote.~%"))
;;; More logical operators: and or
;;; Check if a value is outside of two conditionals.
(if (and (<= *age* 14) (>= *age* 67))
    (format t "Work if you want.~%")
    (format t "Time for work.~%"))
;;; Check if a value is inbetween two conditionals.
(if (or (<= *age* 14) (>= *age* 67))
    (format t "Work if you want.~%")
    (format t "Time for work.~%"))
(defvar *num* 2)
(defvar *num-2* 2)
(defvar *num-3* 2)
;;; Multiple statements in an if.
(if (= *num* 2)
    (progn
        (setf *num-2* (* *num-2* 2))
        (setf *num-3* (* *num-3* 3)))
    (format t "Not equal to 2%"))

(format t "*num-2* = ~d~%" *num-2*)
(format t "*num-3* = ~d~%" *num-3*)

;;; Case statement
(defun get-school (age)
    (case age
        (5 (print "Kindergarden"))
        (6 (print "First grade"))
        (otherwise (print "Middle school"))))

(get-school *age*)

;;; Print a newline.
(terpri)

(when (= *age* 18)
    (setf *num-3* 18)
    (format t "Go to college you're ~d~%" *num-3*))

;;; Unless is the opposite of when.
(unless (not (= *age* 18))
    (setf *num-3* 20)
    (format t "Something random ~d~%" *num-3*))

(defvar *college-ready* nil)

;;; Conditional
(setf *age* 15)
(cond ( (>= *age* 18)
        (setf *college-ready* 'yes)
        (format t "Ready for college ~%"))
    ( (< *age* 18)
        (setf *college-ready* 'no)
        (format t "Not ready for college ~%"))
    (t (format t "Don't Know~%")))

;;; Loops
(loop for x from 1 to 10
    do (print x))
(terpri)
;;; Loop with an exit case.
(setq x 1)
(loop
    (format t "~d~%" x)
    (setq x (+ x 1))
    (when (> x 10) (return x)))
;;; Iterate over a list.
(loop for x in '(Peter Paul Mary) do
    (format t "~s~%" x))
(loop for y from 100 to 110 do
    (print y))
(dotimes (y 12)
    (print y))

;;; Consecutive cells, also known as lists
;;; Define a list.
(cons 'superman 'batman)
;;; Alternative way to define a list.
(list 'superman 'batman 'flash)
;;; List in list
(cons 'aquaman '(superman batman))
;;; Pop from a list start.
(format t "First = ~a~%" (car '(superman batman aquaman)))
;;; Pop from a list start and get rest.
(format t "Everything else = ~a~%" (cdr '(superman batman aquaman)))
(format t "2nd item = ~a~%" (cadr '(superman batman aquaman flash joker)))
(format t "4nd item = ~a~%" (cadddr '(superman batman aquaman flash joker)))
(format t "Is it a list? ~a~%" (listp '(superman batman)))
(format t "Is 3 in list? ~a~%" (if (member 3 '(2 4 6)) 't nil))
(append '(just) '(some) '(random words))
(defparameter *nums* '(2 4 6))
(push 1 *nums*)
(format t "2nd Item in a list ~a~%" (nth 2 *nums*))
;;; plist
(defvar superman (list :name "Superman" :secret-id "Clark Kent"))
(defvar *hero-list* nil)
(push superman *hero-list*)
(dolist (hero *hero-list*)
    (format t "~{~a: ~a ~}~%" hero))
;;; Association lists
(defparameter *heroes*
    '((Superman (Clark Kent))
    (Flash (Barry Allen))
    (Batman (Bruce Wayne))))
(format t "Superman Data ~a~%" (assoc 'Superman *heroes*))
(format t "Superman is ~a~%" (cadr (assoc 'Superman *heroes*)))
(defparameter *hero-size*
    '((Superman (6 ft 3 in) (230 lbs))
    (Flash (6 ft 0 in) (190 lbs))
    (Batman (6 ft 2 in) (210 lbs))))
(format t "Superman is ~a~%" (caddr (assoc 'Superman *hero-size*)))
(format t "Superman is ~a~%" (cadr (assoc 'Superman *hero-size*)))

;;; Functions
(defun hello()
    (print "Hello")
    (terpri))
(hello)
;;; Function with arguments.
(defun get-average (num-1 num-2)
    (/ (+ num-1 num-2) 2))
(format t "Average 10 & 50 = ~a~%" (get-average 10 50))
;;; Function with optional argument.
(defun print-list (w x &optional y z)
    (format t "List = ~a~%" (list w x y z)))
(print-list 1 2 3)
;;; Multiple values
(defvar *total* 0)
(defun sum (&rest nums)
    (dolist (num nums)
        (setf *total* (+ *total* num)))
    (format t "Sum = ~a~%" *total*))
(sum 1 2 3 4 5 6 7)
;;; Keyword parameters
(defun print-list(&optional &key x y z)
    (format t "List: ~a~%" (list x y z)))
(print-list :x 1 :y 2)
;;; The last statement in a function is returned by default. Alternatively use return-from.
(defun difference (number1 number2)
    (return-from difference(- number1 number2)))
(format t "10 - 2 = ~a~%" (difference 10 2))
;;; Quasi quoting allows switching from code to data mode.
(defun get-hero-data (size)
    (format t "~a~%" `(,(caar size) is ,(cadar size) and ,(cddar size)) ))
(get-hero-data *hero-size*)
;;; Run a function on multiple items.
(format t "A number ~a~%" (mapcar #'numberp '(1 2 3 f g)))
;;; Functions that are local to a specific area.
#||
(flet ((func-name (arguments)
    function body))
    body)
||#
;;; Function with multiple functions local to it's area.
(flet ((double-it (num)
    (* num 2))
    (triple-it (num)
    (* num 3)))
    (format t "Double & Triple 10 = ~d~%" (triple-it(double-it 10))))
;;; Labels can be used for functions that can call themselves.
(labels ((double-it (num)
    (* num 2))
    (triple-it (num)
    (* (double-it num) 3)))
    (format t "Double & Triple 2 = ~d~%" (triple-it 3)))
;;; Functions can return multiple values.
(defun squares (num)
    (values (expt num 2) (expt num 3)))
(multiple-value-bind (a b) (squares 2)
    (format t "2^2 = ~d 2^3 = ~d~%" a b))
;;; Higher order functions, passing functions as parameters
(defun times-3 (x) (* 3 x))
(defun times-4 (x) (* 4 x))
(defun multiples (mult-func max-num)
    (dotimes (x max-num)
    (format t "~d: ~d~%" x (funcall mult-func x))))
(multiples #'times-3 5)
(multiples #'times-4 5)
;;; Lambdas, functions without names
(mapcar (lambda (x) (print (* x 2))) '(1 2 3 4 5))
(terpri)

;;; Macros
;;; Macros are compiled and used to generate code.
(defvar *num4* 2)
(defvar *num5* 0)
;;; The way without macros.
(if (= *num4* 2)
    (progn
        (setf *num5* 2)
        (format t "*num5* = ~d~%" *num5*))
    (format t "Not equal to 2 ~%"))
;;; The way with a macro, to avoid having to write progn.
(defmacro ifit (condition &rest body)
    `(if, condition (progn ,@body) (format t "Can't drive~%")))
(setf *age* 16)
(ifit (>= *age* 16)
    (print "You are over 16")
    (print "Time to drive")
    (terpri))
;;; Another macro example, to avoid having to write let.
(defun add (num1 num2)
    (let ((sum (+ num1 num2)))
        (format t "~a + ~a = ~a~%" num1 num2 sum)))
(defmacro letx (var val &rest body)
    `(let ((,var , val)) ,@body))
(defun subtract (num1 num2)
    (letx dif (- num1 num2)
        (format t "~a - ~a = ~a~%" num1 num2 dif)))
(subtract 10 6)

;;; Classes
;;; Define a class.
(defclass animal()
    (name
    sound))
;;; Make an instance
(defparameter *dog* (make-instance 'animal))
;;; Set attributes.
(setf (slot-value *dog* 'name) "Spot")
(setf (slot-value *dog* 'sound) "Woof")
;;; Access attributes.
(format t "~a says ~a~%"
    (slot-value *dog* 'name)
    (slot-value *dog* 'sound))
(defclass mammal ()
    ;; Required argument.
    ((name
        :initarg :name
        :initform (error "Must provide a name"))
    ;; Argument with default value.
    (sound
        :initarg :sound
        :initform "No sound"
        ; automatically generate getter and setter, alternatively: :reader :writer
        :accessor mammal-sound)))
(defparameter *king-kong*
    (make-instance 'mammal :name "King Kong" :sound "Rawwr"))
(format t "~a says ~a~%"
    (slot-value *king-kong* 'name)
    (slot-value *king-kong* 'sound))
(defparameter *fluffy*
    (make-instance 'mammal :name "Fluffy" :sound "Meow"))
;;; Methods don't belong to classes, they belong to generic functions.
(defgeneric make-sound (mammal))
(defmethod make-sound ((the-mammal mammal))
    (format t "~a says ~a~%"
        (slot-value the-mammal 'name)
        (slot-value the-mammal 'sound)))
(make-sound *king-kong*)
(make-sound *fluffy*)
;;; Make getters and setters manually
(defgeneric (setf mammal-name) (value the-mammal))
;;; Setter
(defmethod (setf mammal-name) (value (the-mammal mammal))
    (setf (slot-value the-mammal 'name) value))
;;; Getter
(defgeneric mammal-name (the-mammal))
(defmethod mammal-name ((the-mammal mammal))
    (slot-value the-mammal 'name))
;;; Use setter and getter.
(setf (mammal-name *king-kong*) "Kong")
(format t "I am ~a~%" (mammal-name *king-kong*))
;;; Use automatic getter and setter
(setf (mammal-sound *king-kong*) "Raaaawr")
(format t "I am ~a~%" (mammal-sound *king-kong*))

;;; Inheritance
;;; You can also use multiple inheritance.
(defclass dog (mammal) ())
(defparameter *rover*
    (make-instance 'dog :name "Rover" :sound "Woof"))
(make-sound *rover*)

;;; Arrays
;;; Declare an array.
(defparameter names (make-array 3))
;;; Set a value in an array.
(setf (aref names 1) 'Bob)
;;; Get value.
(format t "~a~%" (aref names 1))
;;; Multidimensional array, initialized with values
(setf num-array (make-array '(3 3)
    :initial-contents '((0 1 2) (3 4 5) (6 7 8))))
(dotimes (x 3)
    (dotimes (y 3)
        (print (aref num-array x y))))
(terpri)

;;; Hash tables
(defparameter people (make-hash-table))
;;; Set an element
(setf (gethash '102 people) '(Paul Smith))
(setf (gethash '103 people) '(Sam Smith))
;;; Access
(format t "~a~%" (gethash '102 people))
;;; Execute a function on multiple items
(maphash #'(lambda (k v) (format t "~a = ~a~%" k v)) people)
;;; Delete item
(remhash '103 people)

;;; Structs, user defined data type
(defstruct customer name address id)
;;; Store data
(setq paulsmith (make-customer
    :name "Paul Smith"
    :address "123 Main"
    :id 1000))
;;; Get value from item.
(format t "~a~%" (customer-name paulsmith))
;;; Change the value in a struct.
(setf (customer-address paulsmith) "125 Main")
;;; Another way to print it.
(write paulsmith)
;;; Create another item.
(setq sally-smith-1001 (make-customer
    :name "Sally Smith"
    :address "126 Main"
    :id 1001))
(terpri)

;;; File IO
(with-open-file (my-stream
    "test.txt"
    ;;; Alternatively: :input
    :direction :output
    ;;; Overwrite it
    :if-exists :supersede)
    (princ "Some random Text" my-stream))
(let ((in (open "test.txt" :if-does-not-exist nil)))
    (when in
        (loop for line = (read-line in nil)
        while line do (format t "~a~%" line))
        (close in)))

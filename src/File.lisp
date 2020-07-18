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

;;;; bacon.lisp

(in-package #:bacon)

;;; "bacon" goes here. Hacks and glory await!

(defun bacon-ipsum (&key meat-and-filler start-with-lorem sentences paras)
  (json:decode-json-from-string
   (babel:octets-to-string
    (nth-value
     0
     (drakma:http-request
      (concatenate 'string
		   "https://baconipsum.com/api/?method=json"
		   (if meat-and-filler "&type=meat-and-filler" "&type=all-meat")
		   (if start-with-lorem "&start-with-lorem=1" "")
		   (if sentences (format nil "&sentences=~A" sentences) "")
		   (if paras (format nil "&paras=~A" paras) ""))
      :method :get)))))

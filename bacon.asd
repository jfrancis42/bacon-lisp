;;;; bacon.asd

(asdf:defsystem #:bacon
  :description "A tool to fetch delicious bacon ipsum from the web."
  :author "Jeff Francis <jeff@illumio.com>"
  :license "MIT, see file LICENSE"
  :depends-on (#:drakma
	       #:babel
               #:cl-json)
  :serial t
  :components ((:file "package")
               (:file "bacon")))


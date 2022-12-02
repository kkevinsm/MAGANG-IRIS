
(cl:in-package :asdf)

(defsystem "IRIS-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "BSRX" :depends-on ("_package_BSRX"))
    (:file "_package_BSRX" :depends-on ("_package"))
    (:file "BSTX" :depends-on ("_package_BSTX"))
    (:file "_package_BSTX" :depends-on ("_package"))
  ))
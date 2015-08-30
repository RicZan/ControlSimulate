
(cl:in-package :asdf)

(defsystem "sys_diffeq-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "AddTwoInts" :depends-on ("_package_AddTwoInts"))
    (:file "_package_AddTwoInts" :depends-on ("_package"))
    (:file "SetState" :depends-on ("_package_SetState"))
    (:file "_package_SetState" :depends-on ("_package"))
  ))
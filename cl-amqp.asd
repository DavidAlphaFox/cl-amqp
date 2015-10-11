(in-package :cl-user)

(defpackage :cl-amqp.system
  (:use :cl :asdf))

(in-package :cl-amqp.system)

(defsystem :cl-amqp
  :version "0.1"
  :description "AMQP 0.9.1 with RabbitMQ extensions in Common Lisp"  
  :maintainer "Ilya Khaprov <ilya.khaprov@publitechs.com>"
  :author "Ilya Khaprov <ilya.khaprov@publitechs.com> and CONTRIBUTORS"
  :licence "MIT"
  :depends-on ("alexandria"
               "nibbles"
               "cl-interpol"
               "log4cl")
  :serial t
  :components ((:module "src"
                :serial t
                :components
                ((:file "package")
                 (:file "util/binary-string")
                 (:module "protocol"
                  :serial t
                  :components
                  ((:file "constants")
                   (:file "conditions"))))))
  :in-order-to ((test-op (test-op cl-amqp.test))))

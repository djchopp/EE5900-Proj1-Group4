
(cl:in-package :asdf)

(defsystem "weather_cpp-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "CurrentCondition" :depends-on ("_package_CurrentCondition"))
    (:file "_package_CurrentCondition" :depends-on ("_package"))
  ))
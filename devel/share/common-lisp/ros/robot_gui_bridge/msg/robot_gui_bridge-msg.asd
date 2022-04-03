
(cl:in-package :asdf)

(defsystem "robot_gui_bridge-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "tictactoemsg" :depends-on ("_package_tictactoemsg"))
    (:file "_package_tictactoemsg" :depends-on ("_package"))
  ))
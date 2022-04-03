;; Auto-generated. Do not edit!


(when (boundp 'robot_gui_bridge::tictactoemsg)
  (if (not (find-package "ROBOT_GUI_BRIDGE"))
    (make-package "ROBOT_GUI_BRIDGE"))
  (shadow 'tictactoemsg (find-package "ROBOT_GUI_BRIDGE")))
(unless (find-package "ROBOT_GUI_BRIDGE::TICTACTOEMSG")
  (make-package "ROBOT_GUI_BRIDGE::TICTACTOEMSG"))

(in-package "ROS")
;;//! \htmlinclude tictactoemsg.msg.html


(defclass robot_gui_bridge::tictactoemsg
  :super ros::object
  :slots (_player _field ))

(defmethod robot_gui_bridge::tictactoemsg
  (:init
   (&key
    ((:player __player) "")
    ((:field __field) "")
    )
   (send-super :init)
   (setq _player (string __player))
   (setq _field (string __field))
   self)
  (:player
   (&optional __player)
   (if __player (setq _player __player)) _player)
  (:field
   (&optional __field)
   (if __field (setq _field __field)) _field)
  (:serialization-length
   ()
   (+
    ;; string _player
    4 (length _player)
    ;; string _field
    4 (length _field)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _player
       (write-long (length _player) s) (princ _player s)
     ;; string _field
       (write-long (length _field) s) (princ _field s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _player
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _player (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _field
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _field (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get robot_gui_bridge::tictactoemsg :md5sum-) "ba712bc9f02a35884a6218f01ddb91fc")
(setf (get robot_gui_bridge::tictactoemsg :datatype-) "robot_gui_bridge/tictactoemsg")
(setf (get robot_gui_bridge::tictactoemsg :definition-)
      "string player
string field
")



(provide :robot_gui_bridge/tictactoemsg "ba712bc9f02a35884a6218f01ddb91fc")



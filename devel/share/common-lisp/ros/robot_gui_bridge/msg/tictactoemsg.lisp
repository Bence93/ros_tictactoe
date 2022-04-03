; Auto-generated. Do not edit!


(cl:in-package robot_gui_bridge-msg)


;//! \htmlinclude tictactoemsg.msg.html

(cl:defclass <tictactoemsg> (roslisp-msg-protocol:ros-message)
  ((player
    :reader player
    :initarg :player
    :type cl:string
    :initform "")
   (field
    :reader field
    :initarg :field
    :type cl:string
    :initform ""))
)

(cl:defclass tictactoemsg (<tictactoemsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <tictactoemsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'tictactoemsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_gui_bridge-msg:<tictactoemsg> is deprecated: use robot_gui_bridge-msg:tictactoemsg instead.")))

(cl:ensure-generic-function 'player-val :lambda-list '(m))
(cl:defmethod player-val ((m <tictactoemsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_gui_bridge-msg:player-val is deprecated.  Use robot_gui_bridge-msg:player instead.")
  (player m))

(cl:ensure-generic-function 'field-val :lambda-list '(m))
(cl:defmethod field-val ((m <tictactoemsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_gui_bridge-msg:field-val is deprecated.  Use robot_gui_bridge-msg:field instead.")
  (field m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <tictactoemsg>) ostream)
  "Serializes a message object of type '<tictactoemsg>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'player))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'player))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'field))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'field))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <tictactoemsg>) istream)
  "Deserializes a message object of type '<tictactoemsg>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'player) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'player) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'field) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'field) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<tictactoemsg>)))
  "Returns string type for a message object of type '<tictactoemsg>"
  "robot_gui_bridge/tictactoemsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'tictactoemsg)))
  "Returns string type for a message object of type 'tictactoemsg"
  "robot_gui_bridge/tictactoemsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<tictactoemsg>)))
  "Returns md5sum for a message object of type '<tictactoemsg>"
  "ba712bc9f02a35884a6218f01ddb91fc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'tictactoemsg)))
  "Returns md5sum for a message object of type 'tictactoemsg"
  "ba712bc9f02a35884a6218f01ddb91fc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<tictactoemsg>)))
  "Returns full string definition for message of type '<tictactoemsg>"
  (cl:format cl:nil "string player~%string field~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'tictactoemsg)))
  "Returns full string definition for message of type 'tictactoemsg"
  (cl:format cl:nil "string player~%string field~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <tictactoemsg>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'player))
     4 (cl:length (cl:slot-value msg 'field))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <tictactoemsg>))
  "Converts a ROS message object to a list"
  (cl:list 'tictactoemsg
    (cl:cons ':player (player msg))
    (cl:cons ':field (field msg))
))

; Auto-generated. Do not edit!


(cl:in-package T2-msg)


;//! \htmlinclude postionGoal.msg.html

(cl:defclass <postionGoal> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0))
)

(cl:defclass postionGoal (<postionGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <postionGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'postionGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name T2-msg:<postionGoal> is deprecated: use T2-msg:postionGoal instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <postionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader T2-msg:x-val is deprecated.  Use T2-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <postionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader T2-msg:y-val is deprecated.  Use T2-msg:y instead.")
  (y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <postionGoal>) ostream)
  "Serializes a message object of type '<postionGoal>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <postionGoal>) istream)
  "Deserializes a message object of type '<postionGoal>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<postionGoal>)))
  "Returns string type for a message object of type '<postionGoal>"
  "T2/postionGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'postionGoal)))
  "Returns string type for a message object of type 'postionGoal"
  "T2/postionGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<postionGoal>)))
  "Returns md5sum for a message object of type '<postionGoal>"
  "ff8d7d66dd3e4b731ef14a45d38888b6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'postionGoal)))
  "Returns md5sum for a message object of type 'postionGoal"
  "ff8d7d66dd3e4b731ef14a45d38888b6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<postionGoal>)))
  "Returns full string definition for message of type '<postionGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#目标信息~%float32 x~%float32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'postionGoal)))
  "Returns full string definition for message of type 'postionGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#目标信息~%float32 x~%float32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <postionGoal>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <postionGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'postionGoal
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
))

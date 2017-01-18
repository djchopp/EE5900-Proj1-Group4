; Auto-generated. Do not edit!


(cl:in-package pub_sub-msg)


;//! \htmlinclude message.msg.html

(cl:defclass <message> (roslisp-msg-protocol:ros-message)
  ((temperature
    :reader temperature
    :initarg :temperature
    :type cl:float
    :initform 0.0)
   (wind
    :reader wind
    :initarg :wind
    :type cl:float
    :initform 0.0)
   (humidity
    :reader humidity
    :initarg :humidity
    :type cl:float
    :initform 0.0)
   (status
    :reader status
    :initarg :status
    :type cl:string
    :initform ""))
)

(cl:defclass message (<message>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <message>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'message)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pub_sub-msg:<message> is deprecated: use pub_sub-msg:message instead.")))

(cl:ensure-generic-function 'temperature-val :lambda-list '(m))
(cl:defmethod temperature-val ((m <message>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pub_sub-msg:temperature-val is deprecated.  Use pub_sub-msg:temperature instead.")
  (temperature m))

(cl:ensure-generic-function 'wind-val :lambda-list '(m))
(cl:defmethod wind-val ((m <message>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pub_sub-msg:wind-val is deprecated.  Use pub_sub-msg:wind instead.")
  (wind m))

(cl:ensure-generic-function 'humidity-val :lambda-list '(m))
(cl:defmethod humidity-val ((m <message>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pub_sub-msg:humidity-val is deprecated.  Use pub_sub-msg:humidity instead.")
  (humidity m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <message>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pub_sub-msg:status-val is deprecated.  Use pub_sub-msg:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <message>) ostream)
  "Serializes a message object of type '<message>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'temperature))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'wind))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'humidity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'status))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <message>) istream)
  "Deserializes a message object of type '<message>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'temperature) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'wind) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'humidity) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'status) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<message>)))
  "Returns string type for a message object of type '<message>"
  "pub_sub/message")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'message)))
  "Returns string type for a message object of type 'message"
  "pub_sub/message")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<message>)))
  "Returns md5sum for a message object of type '<message>"
  "fa5a27ee21ff108a20dd5dc60316df07")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'message)))
  "Returns md5sum for a message object of type 'message"
  "fa5a27ee21ff108a20dd5dc60316df07")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<message>)))
  "Returns full string definition for message of type '<message>"
  (cl:format cl:nil "float32 temperature~%float32 wind~%float32 humidity~%string status~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'message)))
  "Returns full string definition for message of type 'message"
  (cl:format cl:nil "float32 temperature~%float32 wind~%float32 humidity~%string status~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <message>))
  (cl:+ 0
     4
     4
     4
     4 (cl:length (cl:slot-value msg 'status))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <message>))
  "Converts a ROS message object to a list"
  (cl:list 'message
    (cl:cons ':temperature (temperature msg))
    (cl:cons ':wind (wind msg))
    (cl:cons ':humidity (humidity msg))
    (cl:cons ':status (status msg))
))

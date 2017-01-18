; Auto-generated. Do not edit!


(cl:in-package weather_cpp-msg)


;//! \htmlinclude CurrentCondition.msg.html

(cl:defclass <CurrentCondition> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (tempMax
    :reader tempMax
    :initarg :tempMax
    :type cl:float
    :initform 0.0)
   (tempHourly
    :reader tempHourly
    :initarg :tempHourly
    :type cl:float
    :initform 0.0)
   (tempDew
    :reader tempDew
    :initarg :tempDew
    :type cl:float
    :initform 0.0)
   (tempApparent
    :reader tempApparent
    :initarg :tempApparent
    :type cl:float
    :initform 0.0)
   (rainfall
    :reader rainfall
    :initarg :rainfall
    :type cl:float
    :initform 0.0)
   (icefall
    :reader icefall
    :initarg :icefall
    :type cl:float
    :initform 0.0)
   (snowfall
    :reader snowfall
    :initarg :snowfall
    :type cl:float
    :initform 0.0)
   (probTornado
    :reader probTornado
    :initarg :probTornado
    :type cl:float
    :initform 0.0)
   (probHail
    :reader probHail
    :initarg :probHail
    :type cl:float
    :initform 0.0)
   (probThunderWind
    :reader probThunderWind
    :initarg :probThunderWind
    :type cl:float
    :initform 0.0)
   (probExTornado
    :reader probExTornado
    :initarg :probExTornado
    :type cl:float
    :initform 0.0)
   (probExHail
    :reader probExHail
    :initarg :probExHail
    :type cl:float
    :initform 0.0)
   (probExThunderWind
    :reader probExThunderWind
    :initarg :probExThunderWind
    :type cl:float
    :initform 0.0))
)

(cl:defclass CurrentCondition (<CurrentCondition>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CurrentCondition>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CurrentCondition)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name weather_cpp-msg:<CurrentCondition> is deprecated: use weather_cpp-msg:CurrentCondition instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CurrentCondition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader weather_cpp-msg:header-val is deprecated.  Use weather_cpp-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'tempMax-val :lambda-list '(m))
(cl:defmethod tempMax-val ((m <CurrentCondition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader weather_cpp-msg:tempMax-val is deprecated.  Use weather_cpp-msg:tempMax instead.")
  (tempMax m))

(cl:ensure-generic-function 'tempHourly-val :lambda-list '(m))
(cl:defmethod tempHourly-val ((m <CurrentCondition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader weather_cpp-msg:tempHourly-val is deprecated.  Use weather_cpp-msg:tempHourly instead.")
  (tempHourly m))

(cl:ensure-generic-function 'tempDew-val :lambda-list '(m))
(cl:defmethod tempDew-val ((m <CurrentCondition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader weather_cpp-msg:tempDew-val is deprecated.  Use weather_cpp-msg:tempDew instead.")
  (tempDew m))

(cl:ensure-generic-function 'tempApparent-val :lambda-list '(m))
(cl:defmethod tempApparent-val ((m <CurrentCondition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader weather_cpp-msg:tempApparent-val is deprecated.  Use weather_cpp-msg:tempApparent instead.")
  (tempApparent m))

(cl:ensure-generic-function 'rainfall-val :lambda-list '(m))
(cl:defmethod rainfall-val ((m <CurrentCondition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader weather_cpp-msg:rainfall-val is deprecated.  Use weather_cpp-msg:rainfall instead.")
  (rainfall m))

(cl:ensure-generic-function 'icefall-val :lambda-list '(m))
(cl:defmethod icefall-val ((m <CurrentCondition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader weather_cpp-msg:icefall-val is deprecated.  Use weather_cpp-msg:icefall instead.")
  (icefall m))

(cl:ensure-generic-function 'snowfall-val :lambda-list '(m))
(cl:defmethod snowfall-val ((m <CurrentCondition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader weather_cpp-msg:snowfall-val is deprecated.  Use weather_cpp-msg:snowfall instead.")
  (snowfall m))

(cl:ensure-generic-function 'probTornado-val :lambda-list '(m))
(cl:defmethod probTornado-val ((m <CurrentCondition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader weather_cpp-msg:probTornado-val is deprecated.  Use weather_cpp-msg:probTornado instead.")
  (probTornado m))

(cl:ensure-generic-function 'probHail-val :lambda-list '(m))
(cl:defmethod probHail-val ((m <CurrentCondition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader weather_cpp-msg:probHail-val is deprecated.  Use weather_cpp-msg:probHail instead.")
  (probHail m))

(cl:ensure-generic-function 'probThunderWind-val :lambda-list '(m))
(cl:defmethod probThunderWind-val ((m <CurrentCondition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader weather_cpp-msg:probThunderWind-val is deprecated.  Use weather_cpp-msg:probThunderWind instead.")
  (probThunderWind m))

(cl:ensure-generic-function 'probExTornado-val :lambda-list '(m))
(cl:defmethod probExTornado-val ((m <CurrentCondition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader weather_cpp-msg:probExTornado-val is deprecated.  Use weather_cpp-msg:probExTornado instead.")
  (probExTornado m))

(cl:ensure-generic-function 'probExHail-val :lambda-list '(m))
(cl:defmethod probExHail-val ((m <CurrentCondition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader weather_cpp-msg:probExHail-val is deprecated.  Use weather_cpp-msg:probExHail instead.")
  (probExHail m))

(cl:ensure-generic-function 'probExThunderWind-val :lambda-list '(m))
(cl:defmethod probExThunderWind-val ((m <CurrentCondition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader weather_cpp-msg:probExThunderWind-val is deprecated.  Use weather_cpp-msg:probExThunderWind instead.")
  (probExThunderWind m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CurrentCondition>) ostream)
  "Serializes a message object of type '<CurrentCondition>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'tempMax))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'tempHourly))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'tempDew))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'tempApparent))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rainfall))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'icefall))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'snowfall))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'probTornado))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'probHail))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'probThunderWind))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'probExTornado))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'probExHail))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'probExThunderWind))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CurrentCondition>) istream)
  "Deserializes a message object of type '<CurrentCondition>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'tempMax) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'tempHourly) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'tempDew) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'tempApparent) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rainfall) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'icefall) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'snowfall) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'probTornado) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'probHail) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'probThunderWind) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'probExTornado) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'probExHail) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'probExThunderWind) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CurrentCondition>)))
  "Returns string type for a message object of type '<CurrentCondition>"
  "weather_cpp/CurrentCondition")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CurrentCondition)))
  "Returns string type for a message object of type 'CurrentCondition"
  "weather_cpp/CurrentCondition")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CurrentCondition>)))
  "Returns md5sum for a message object of type '<CurrentCondition>"
  "eeef136eba3229f200322aca790414d0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CurrentCondition)))
  "Returns md5sum for a message object of type 'CurrentCondition"
  "eeef136eba3229f200322aca790414d0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CurrentCondition>)))
  "Returns full string definition for message of type '<CurrentCondition>"
  (cl:format cl:nil "Header header~%float32 tempMax~%float32 tempHourly~%float32 tempDew~%float32 tempApparent~%float32 rainfall~%float32 icefall~%float32 snowfall~%float32 probTornado~%float32 probHail~%float32 probThunderWind~%float32 probExTornado~%float32 probExHail~%float32 probExThunderWind~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CurrentCondition)))
  "Returns full string definition for message of type 'CurrentCondition"
  (cl:format cl:nil "Header header~%float32 tempMax~%float32 tempHourly~%float32 tempDew~%float32 tempApparent~%float32 rainfall~%float32 icefall~%float32 snowfall~%float32 probTornado~%float32 probHail~%float32 probThunderWind~%float32 probExTornado~%float32 probExHail~%float32 probExThunderWind~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CurrentCondition>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CurrentCondition>))
  "Converts a ROS message object to a list"
  (cl:list 'CurrentCondition
    (cl:cons ':header (header msg))
    (cl:cons ':tempMax (tempMax msg))
    (cl:cons ':tempHourly (tempHourly msg))
    (cl:cons ':tempDew (tempDew msg))
    (cl:cons ':tempApparent (tempApparent msg))
    (cl:cons ':rainfall (rainfall msg))
    (cl:cons ':icefall (icefall msg))
    (cl:cons ':snowfall (snowfall msg))
    (cl:cons ':probTornado (probTornado msg))
    (cl:cons ':probHail (probHail msg))
    (cl:cons ':probThunderWind (probThunderWind msg))
    (cl:cons ':probExTornado (probExTornado msg))
    (cl:cons ':probExHail (probExHail msg))
    (cl:cons ':probExThunderWind (probExThunderWind msg))
))

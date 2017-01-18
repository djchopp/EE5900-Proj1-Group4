; Auto-generated. Do not edit!


(cl:in-package weather_cpp-msg)


;//! \htmlinclude CurrentCondition.msg.html

(cl:defclass <CurrentCondition> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (temperature
    :reader temperature
    :initarg :temperature
    :type cl:string
    :initform "")
   (humidity
    :reader humidity
    :initarg :humidity
    :type cl:string
    :initform "")
   (windSpeed
    :reader windSpeed
    :initarg :windSpeed
    :type cl:string
    :initform "")
   (dewpoint
    :reader dewpoint
    :initarg :dewpoint
    :type cl:string
    :initform "")
   (visibility
    :reader visibility
    :initarg :visibility
    :type cl:string
    :initform "")
   (windchill
    :reader windchill
    :initarg :windchill
    :type cl:string
    :initform "")
   (lastUpdate
    :reader lastUpdate
    :initarg :lastUpdate
    :type cl:string
    :initform ""))
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

(cl:ensure-generic-function 'temperature-val :lambda-list '(m))
(cl:defmethod temperature-val ((m <CurrentCondition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader weather_cpp-msg:temperature-val is deprecated.  Use weather_cpp-msg:temperature instead.")
  (temperature m))

(cl:ensure-generic-function 'humidity-val :lambda-list '(m))
(cl:defmethod humidity-val ((m <CurrentCondition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader weather_cpp-msg:humidity-val is deprecated.  Use weather_cpp-msg:humidity instead.")
  (humidity m))

(cl:ensure-generic-function 'windSpeed-val :lambda-list '(m))
(cl:defmethod windSpeed-val ((m <CurrentCondition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader weather_cpp-msg:windSpeed-val is deprecated.  Use weather_cpp-msg:windSpeed instead.")
  (windSpeed m))

(cl:ensure-generic-function 'dewpoint-val :lambda-list '(m))
(cl:defmethod dewpoint-val ((m <CurrentCondition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader weather_cpp-msg:dewpoint-val is deprecated.  Use weather_cpp-msg:dewpoint instead.")
  (dewpoint m))

(cl:ensure-generic-function 'visibility-val :lambda-list '(m))
(cl:defmethod visibility-val ((m <CurrentCondition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader weather_cpp-msg:visibility-val is deprecated.  Use weather_cpp-msg:visibility instead.")
  (visibility m))

(cl:ensure-generic-function 'windchill-val :lambda-list '(m))
(cl:defmethod windchill-val ((m <CurrentCondition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader weather_cpp-msg:windchill-val is deprecated.  Use weather_cpp-msg:windchill instead.")
  (windchill m))

(cl:ensure-generic-function 'lastUpdate-val :lambda-list '(m))
(cl:defmethod lastUpdate-val ((m <CurrentCondition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader weather_cpp-msg:lastUpdate-val is deprecated.  Use weather_cpp-msg:lastUpdate instead.")
  (lastUpdate m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CurrentCondition>) ostream)
  "Serializes a message object of type '<CurrentCondition>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'temperature))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'temperature))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'humidity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'humidity))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'windSpeed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'windSpeed))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'dewpoint))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'dewpoint))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'visibility))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'visibility))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'windchill))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'windchill))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'lastUpdate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'lastUpdate))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CurrentCondition>) istream)
  "Deserializes a message object of type '<CurrentCondition>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'temperature) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'temperature) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'humidity) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'humidity) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'windSpeed) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'windSpeed) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'dewpoint) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'dewpoint) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'visibility) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'visibility) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'windchill) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'windchill) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lastUpdate) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'lastUpdate) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
  "26bdc8d77dad89eb3673a16e5de86c17")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CurrentCondition)))
  "Returns md5sum for a message object of type 'CurrentCondition"
  "26bdc8d77dad89eb3673a16e5de86c17")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CurrentCondition>)))
  "Returns full string definition for message of type '<CurrentCondition>"
  (cl:format cl:nil "Header header~%string temperature~%string humidity~%string windSpeed~%string dewpoint~%string visibility~%string windchill~%string lastUpdate~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CurrentCondition)))
  "Returns full string definition for message of type 'CurrentCondition"
  (cl:format cl:nil "Header header~%string temperature~%string humidity~%string windSpeed~%string dewpoint~%string visibility~%string windchill~%string lastUpdate~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CurrentCondition>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'temperature))
     4 (cl:length (cl:slot-value msg 'humidity))
     4 (cl:length (cl:slot-value msg 'windSpeed))
     4 (cl:length (cl:slot-value msg 'dewpoint))
     4 (cl:length (cl:slot-value msg 'visibility))
     4 (cl:length (cl:slot-value msg 'windchill))
     4 (cl:length (cl:slot-value msg 'lastUpdate))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CurrentCondition>))
  "Converts a ROS message object to a list"
  (cl:list 'CurrentCondition
    (cl:cons ':header (header msg))
    (cl:cons ':temperature (temperature msg))
    (cl:cons ':humidity (humidity msg))
    (cl:cons ':windSpeed (windSpeed msg))
    (cl:cons ':dewpoint (dewpoint msg))
    (cl:cons ':visibility (visibility msg))
    (cl:cons ':windchill (windchill msg))
    (cl:cons ':lastUpdate (lastUpdate msg))
))

; Auto-generated. Do not edit!


(cl:in-package sys_diffeq-srv)


;//! \htmlinclude SetState-request.msg.html

(cl:defclass <SetState-request> (roslisp-msg-protocol:ros-message)
  ((x_new
    :reader x_new
    :initarg :x_new
    :type cl:float
    :initform 0.0))
)

(cl:defclass SetState-request (<SetState-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetState-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetState-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sys_diffeq-srv:<SetState-request> is deprecated: use sys_diffeq-srv:SetState-request instead.")))

(cl:ensure-generic-function 'x_new-val :lambda-list '(m))
(cl:defmethod x_new-val ((m <SetState-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sys_diffeq-srv:x_new-val is deprecated.  Use sys_diffeq-srv:x_new instead.")
  (x_new m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetState-request>) ostream)
  "Serializes a message object of type '<SetState-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x_new))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetState-request>) istream)
  "Deserializes a message object of type '<SetState-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x_new) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetState-request>)))
  "Returns string type for a service object of type '<SetState-request>"
  "sys_diffeq/SetStateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetState-request)))
  "Returns string type for a service object of type 'SetState-request"
  "sys_diffeq/SetStateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetState-request>)))
  "Returns md5sum for a message object of type '<SetState-request>"
  "b4a4569c4863c839d6e9f24980e2711d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetState-request)))
  "Returns md5sum for a message object of type 'SetState-request"
  "b4a4569c4863c839d6e9f24980e2711d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetState-request>)))
  "Returns full string definition for message of type '<SetState-request>"
  (cl:format cl:nil "float32 x_new~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetState-request)))
  "Returns full string definition for message of type 'SetState-request"
  (cl:format cl:nil "float32 x_new~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetState-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetState-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetState-request
    (cl:cons ':x_new (x_new msg))
))
;//! \htmlinclude SetState-response.msg.html

(cl:defclass <SetState-response> (roslisp-msg-protocol:ros-message)
  ((done
    :reader done
    :initarg :done
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetState-response (<SetState-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetState-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetState-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sys_diffeq-srv:<SetState-response> is deprecated: use sys_diffeq-srv:SetState-response instead.")))

(cl:ensure-generic-function 'done-val :lambda-list '(m))
(cl:defmethod done-val ((m <SetState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sys_diffeq-srv:done-val is deprecated.  Use sys_diffeq-srv:done instead.")
  (done m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetState-response>) ostream)
  "Serializes a message object of type '<SetState-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'done) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetState-response>) istream)
  "Deserializes a message object of type '<SetState-response>"
    (cl:setf (cl:slot-value msg 'done) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetState-response>)))
  "Returns string type for a service object of type '<SetState-response>"
  "sys_diffeq/SetStateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetState-response)))
  "Returns string type for a service object of type 'SetState-response"
  "sys_diffeq/SetStateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetState-response>)))
  "Returns md5sum for a message object of type '<SetState-response>"
  "b4a4569c4863c839d6e9f24980e2711d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetState-response)))
  "Returns md5sum for a message object of type 'SetState-response"
  "b4a4569c4863c839d6e9f24980e2711d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetState-response>)))
  "Returns full string definition for message of type '<SetState-response>"
  (cl:format cl:nil "bool done~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetState-response)))
  "Returns full string definition for message of type 'SetState-response"
  (cl:format cl:nil "bool done~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetState-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetState-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetState-response
    (cl:cons ':done (done msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetState)))
  'SetState-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetState)))
  'SetState-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetState)))
  "Returns string type for a service object of type '<SetState>"
  "sys_diffeq/SetState")
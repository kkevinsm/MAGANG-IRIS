; Auto-generated. Do not edit!


(cl:in-package IRIS-msg)


;//! \htmlinclude BSRX.msg.html

(cl:defclass <BSRX> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:integer
    :initform 0)
   (x_tujuan
    :reader x_tujuan
    :initarg :x_tujuan
    :type cl:integer
    :initform 0)
   (y_tujuan
    :reader y_tujuan
    :initarg :y_tujuan
    :type cl:integer
    :initform 0))
)

(cl:defclass BSRX (<BSRX>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BSRX>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BSRX)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name IRIS-msg:<BSRX> is deprecated: use IRIS-msg:BSRX instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <BSRX>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader IRIS-msg:status-val is deprecated.  Use IRIS-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'x_tujuan-val :lambda-list '(m))
(cl:defmethod x_tujuan-val ((m <BSRX>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader IRIS-msg:x_tujuan-val is deprecated.  Use IRIS-msg:x_tujuan instead.")
  (x_tujuan m))

(cl:ensure-generic-function 'y_tujuan-val :lambda-list '(m))
(cl:defmethod y_tujuan-val ((m <BSRX>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader IRIS-msg:y_tujuan-val is deprecated.  Use IRIS-msg:y_tujuan instead.")
  (y_tujuan m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BSRX>) ostream)
  "Serializes a message object of type '<BSRX>"
  (cl:let* ((signed (cl:slot-value msg 'status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'x_tujuan)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'y_tujuan)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BSRX>) istream)
  "Deserializes a message object of type '<BSRX>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'x_tujuan) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'y_tujuan) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BSRX>)))
  "Returns string type for a message object of type '<BSRX>"
  "IRIS/BSRX")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BSRX)))
  "Returns string type for a message object of type 'BSRX"
  "IRIS/BSRX")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BSRX>)))
  "Returns md5sum for a message object of type '<BSRX>"
  "a32a211428e7e0b8ebe12ebf69d1f515")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BSRX)))
  "Returns md5sum for a message object of type 'BSRX"
  "a32a211428e7e0b8ebe12ebf69d1f515")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BSRX>)))
  "Returns full string definition for message of type '<BSRX>"
  (cl:format cl:nil "int64 status~%int64 x_tujuan~%int64 y_tujuan~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BSRX)))
  "Returns full string definition for message of type 'BSRX"
  (cl:format cl:nil "int64 status~%int64 x_tujuan~%int64 y_tujuan~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BSRX>))
  (cl:+ 0
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BSRX>))
  "Converts a ROS message object to a list"
  (cl:list 'BSRX
    (cl:cons ':status (status msg))
    (cl:cons ':x_tujuan (x_tujuan msg))
    (cl:cons ':y_tujuan (y_tujuan msg))
))

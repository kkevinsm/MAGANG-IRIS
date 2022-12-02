;; Auto-generated. Do not edit!


(when (boundp 'IRIS::BSRX)
  (if (not (find-package "IRIS"))
    (make-package "IRIS"))
  (shadow 'BSRX (find-package "IRIS")))
(unless (find-package "IRIS::BSRX")
  (make-package "IRIS::BSRX"))

(in-package "ROS")
;;//! \htmlinclude BSRX.msg.html


(defclass IRIS::BSRX
  :super ros::object
  :slots (_status _x_tujuan _y_tujuan ))

(defmethod IRIS::BSRX
  (:init
   (&key
    ((:status __status) 0)
    ((:x_tujuan __x_tujuan) 0)
    ((:y_tujuan __y_tujuan) 0)
    )
   (send-super :init)
   (setq _status (round __status))
   (setq _x_tujuan (round __x_tujuan))
   (setq _y_tujuan (round __y_tujuan))
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:x_tujuan
   (&optional __x_tujuan)
   (if __x_tujuan (setq _x_tujuan __x_tujuan)) _x_tujuan)
  (:y_tujuan
   (&optional __y_tujuan)
   (if __y_tujuan (setq _y_tujuan __y_tujuan)) _y_tujuan)
  (:serialization-length
   ()
   (+
    ;; int64 _status
    8
    ;; int64 _x_tujuan
    8
    ;; int64 _y_tujuan
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _status
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _status (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _status) (= (length (_status . bv)) 2)) ;; bignum
              (write-long (ash (elt (_status . bv) 0) 0) s)
              (write-long (ash (elt (_status . bv) 1) -1) s))
             ((and (class _status) (= (length (_status . bv)) 1)) ;; big1
              (write-long (elt (_status . bv) 0) s)
              (write-long (if (>= _status 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _status s)(write-long (if (>= _status 0) 0 #xffffffff) s)))
     ;; int64 _x_tujuan
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _x_tujuan (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _x_tujuan) (= (length (_x_tujuan . bv)) 2)) ;; bignum
              (write-long (ash (elt (_x_tujuan . bv) 0) 0) s)
              (write-long (ash (elt (_x_tujuan . bv) 1) -1) s))
             ((and (class _x_tujuan) (= (length (_x_tujuan . bv)) 1)) ;; big1
              (write-long (elt (_x_tujuan . bv) 0) s)
              (write-long (if (>= _x_tujuan 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _x_tujuan s)(write-long (if (>= _x_tujuan 0) 0 #xffffffff) s)))
     ;; int64 _y_tujuan
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _y_tujuan (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _y_tujuan) (= (length (_y_tujuan . bv)) 2)) ;; bignum
              (write-long (ash (elt (_y_tujuan . bv) 0) 0) s)
              (write-long (ash (elt (_y_tujuan . bv) 1) -1) s))
             ((and (class _y_tujuan) (= (length (_y_tujuan . bv)) 1)) ;; big1
              (write-long (elt (_y_tujuan . bv) 0) s)
              (write-long (if (>= _y_tujuan 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _y_tujuan s)(write-long (if (>= _y_tujuan 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _status
#+(or :alpha :irix6 :x86_64)
      (setf _status (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _status (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _x_tujuan
#+(or :alpha :irix6 :x86_64)
      (setf _x_tujuan (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _x_tujuan (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _y_tujuan
#+(or :alpha :irix6 :x86_64)
      (setf _y_tujuan (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _y_tujuan (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(setf (get IRIS::BSRX :md5sum-) "a32a211428e7e0b8ebe12ebf69d1f515")
(setf (get IRIS::BSRX :datatype-) "IRIS/BSRX")
(setf (get IRIS::BSRX :definition-)
      "int64 status
int64 x_tujuan
int64 y_tujuan
")



(provide :IRIS/BSRX "a32a211428e7e0b8ebe12ebf69d1f515")



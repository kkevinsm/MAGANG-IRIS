;; Auto-generated. Do not edit!


(when (boundp 'IRIS::BSTX)
  (if (not (find-package "IRIS"))
    (make-package "IRIS"))
  (shadow 'BSTX (find-package "IRIS")))
(unless (find-package "IRIS::BSTX")
  (make-package "IRIS::BSTX"))

(in-package "ROS")
;;//! \htmlinclude BSTX.msg.html


(defclass IRIS::BSTX
  :super ros::object
  :slots (_pos_x _pos_y _pos_theta _v_x _v_y _v_theta _bola_x _bola_y ))

(defmethod IRIS::BSTX
  (:init
   (&key
    ((:pos_x __pos_x) 0)
    ((:pos_y __pos_y) 0)
    ((:pos_theta __pos_theta) 0)
    ((:v_x __v_x) 0)
    ((:v_y __v_y) 0)
    ((:v_theta __v_theta) 0)
    ((:bola_x __bola_x) 0)
    ((:bola_y __bola_y) 0)
    )
   (send-super :init)
   (setq _pos_x (round __pos_x))
   (setq _pos_y (round __pos_y))
   (setq _pos_theta (round __pos_theta))
   (setq _v_x (round __v_x))
   (setq _v_y (round __v_y))
   (setq _v_theta (round __v_theta))
   (setq _bola_x (round __bola_x))
   (setq _bola_y (round __bola_y))
   self)
  (:pos_x
   (&optional __pos_x)
   (if __pos_x (setq _pos_x __pos_x)) _pos_x)
  (:pos_y
   (&optional __pos_y)
   (if __pos_y (setq _pos_y __pos_y)) _pos_y)
  (:pos_theta
   (&optional __pos_theta)
   (if __pos_theta (setq _pos_theta __pos_theta)) _pos_theta)
  (:v_x
   (&optional __v_x)
   (if __v_x (setq _v_x __v_x)) _v_x)
  (:v_y
   (&optional __v_y)
   (if __v_y (setq _v_y __v_y)) _v_y)
  (:v_theta
   (&optional __v_theta)
   (if __v_theta (setq _v_theta __v_theta)) _v_theta)
  (:bola_x
   (&optional __bola_x)
   (if __bola_x (setq _bola_x __bola_x)) _bola_x)
  (:bola_y
   (&optional __bola_y)
   (if __bola_y (setq _bola_y __bola_y)) _bola_y)
  (:serialization-length
   ()
   (+
    ;; int64 _pos_x
    8
    ;; int64 _pos_y
    8
    ;; int64 _pos_theta
    8
    ;; int64 _v_x
    8
    ;; int64 _v_y
    8
    ;; int64 _v_theta
    8
    ;; int64 _bola_x
    8
    ;; int64 _bola_y
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _pos_x
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _pos_x (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _pos_x) (= (length (_pos_x . bv)) 2)) ;; bignum
              (write-long (ash (elt (_pos_x . bv) 0) 0) s)
              (write-long (ash (elt (_pos_x . bv) 1) -1) s))
             ((and (class _pos_x) (= (length (_pos_x . bv)) 1)) ;; big1
              (write-long (elt (_pos_x . bv) 0) s)
              (write-long (if (>= _pos_x 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _pos_x s)(write-long (if (>= _pos_x 0) 0 #xffffffff) s)))
     ;; int64 _pos_y
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _pos_y (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _pos_y) (= (length (_pos_y . bv)) 2)) ;; bignum
              (write-long (ash (elt (_pos_y . bv) 0) 0) s)
              (write-long (ash (elt (_pos_y . bv) 1) -1) s))
             ((and (class _pos_y) (= (length (_pos_y . bv)) 1)) ;; big1
              (write-long (elt (_pos_y . bv) 0) s)
              (write-long (if (>= _pos_y 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _pos_y s)(write-long (if (>= _pos_y 0) 0 #xffffffff) s)))
     ;; int64 _pos_theta
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _pos_theta (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _pos_theta) (= (length (_pos_theta . bv)) 2)) ;; bignum
              (write-long (ash (elt (_pos_theta . bv) 0) 0) s)
              (write-long (ash (elt (_pos_theta . bv) 1) -1) s))
             ((and (class _pos_theta) (= (length (_pos_theta . bv)) 1)) ;; big1
              (write-long (elt (_pos_theta . bv) 0) s)
              (write-long (if (>= _pos_theta 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _pos_theta s)(write-long (if (>= _pos_theta 0) 0 #xffffffff) s)))
     ;; int64 _v_x
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _v_x (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _v_x) (= (length (_v_x . bv)) 2)) ;; bignum
              (write-long (ash (elt (_v_x . bv) 0) 0) s)
              (write-long (ash (elt (_v_x . bv) 1) -1) s))
             ((and (class _v_x) (= (length (_v_x . bv)) 1)) ;; big1
              (write-long (elt (_v_x . bv) 0) s)
              (write-long (if (>= _v_x 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _v_x s)(write-long (if (>= _v_x 0) 0 #xffffffff) s)))
     ;; int64 _v_y
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _v_y (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _v_y) (= (length (_v_y . bv)) 2)) ;; bignum
              (write-long (ash (elt (_v_y . bv) 0) 0) s)
              (write-long (ash (elt (_v_y . bv) 1) -1) s))
             ((and (class _v_y) (= (length (_v_y . bv)) 1)) ;; big1
              (write-long (elt (_v_y . bv) 0) s)
              (write-long (if (>= _v_y 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _v_y s)(write-long (if (>= _v_y 0) 0 #xffffffff) s)))
     ;; int64 _v_theta
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _v_theta (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _v_theta) (= (length (_v_theta . bv)) 2)) ;; bignum
              (write-long (ash (elt (_v_theta . bv) 0) 0) s)
              (write-long (ash (elt (_v_theta . bv) 1) -1) s))
             ((and (class _v_theta) (= (length (_v_theta . bv)) 1)) ;; big1
              (write-long (elt (_v_theta . bv) 0) s)
              (write-long (if (>= _v_theta 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _v_theta s)(write-long (if (>= _v_theta 0) 0 #xffffffff) s)))
     ;; int64 _bola_x
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _bola_x (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _bola_x) (= (length (_bola_x . bv)) 2)) ;; bignum
              (write-long (ash (elt (_bola_x . bv) 0) 0) s)
              (write-long (ash (elt (_bola_x . bv) 1) -1) s))
             ((and (class _bola_x) (= (length (_bola_x . bv)) 1)) ;; big1
              (write-long (elt (_bola_x . bv) 0) s)
              (write-long (if (>= _bola_x 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _bola_x s)(write-long (if (>= _bola_x 0) 0 #xffffffff) s)))
     ;; int64 _bola_y
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _bola_y (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _bola_y) (= (length (_bola_y . bv)) 2)) ;; bignum
              (write-long (ash (elt (_bola_y . bv) 0) 0) s)
              (write-long (ash (elt (_bola_y . bv) 1) -1) s))
             ((and (class _bola_y) (= (length (_bola_y . bv)) 1)) ;; big1
              (write-long (elt (_bola_y . bv) 0) s)
              (write-long (if (>= _bola_y 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _bola_y s)(write-long (if (>= _bola_y 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _pos_x
#+(or :alpha :irix6 :x86_64)
      (setf _pos_x (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _pos_x (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _pos_y
#+(or :alpha :irix6 :x86_64)
      (setf _pos_y (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _pos_y (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _pos_theta
#+(or :alpha :irix6 :x86_64)
      (setf _pos_theta (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _pos_theta (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _v_x
#+(or :alpha :irix6 :x86_64)
      (setf _v_x (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _v_x (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _v_y
#+(or :alpha :irix6 :x86_64)
      (setf _v_y (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _v_y (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _v_theta
#+(or :alpha :irix6 :x86_64)
      (setf _v_theta (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _v_theta (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _bola_x
#+(or :alpha :irix6 :x86_64)
      (setf _bola_x (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _bola_x (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _bola_y
#+(or :alpha :irix6 :x86_64)
      (setf _bola_y (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _bola_y (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(setf (get IRIS::BSTX :md5sum-) "297a735316498be176d85aaa0928e9ed")
(setf (get IRIS::BSTX :datatype-) "IRIS/BSTX")
(setf (get IRIS::BSTX :definition-)
      "int64 pos_x
int64 pos_y
int64 pos_theta
int64 v_x
int64 v_y
int64 v_theta
int64 bola_x
int64 bola_y
")



(provide :IRIS/BSTX "297a735316498be176d85aaa0928e9ed")



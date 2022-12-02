# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from IRIS/BSTX.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class BSTX(genpy.Message):
  _md5sum = "297a735316498be176d85aaa0928e9ed"
  _type = "IRIS/BSTX"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """int64 pos_x
int64 pos_y
int64 pos_theta
int64 v_x
int64 v_y
int64 v_theta
int64 bola_x
int64 bola_y"""
  __slots__ = ['pos_x','pos_y','pos_theta','v_x','v_y','v_theta','bola_x','bola_y']
  _slot_types = ['int64','int64','int64','int64','int64','int64','int64','int64']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       pos_x,pos_y,pos_theta,v_x,v_y,v_theta,bola_x,bola_y

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(BSTX, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.pos_x is None:
        self.pos_x = 0
      if self.pos_y is None:
        self.pos_y = 0
      if self.pos_theta is None:
        self.pos_theta = 0
      if self.v_x is None:
        self.v_x = 0
      if self.v_y is None:
        self.v_y = 0
      if self.v_theta is None:
        self.v_theta = 0
      if self.bola_x is None:
        self.bola_x = 0
      if self.bola_y is None:
        self.bola_y = 0
    else:
      self.pos_x = 0
      self.pos_y = 0
      self.pos_theta = 0
      self.v_x = 0
      self.v_y = 0
      self.v_theta = 0
      self.bola_x = 0
      self.bola_y = 0

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_8q().pack(_x.pos_x, _x.pos_y, _x.pos_theta, _x.v_x, _x.v_y, _x.v_theta, _x.bola_x, _x.bola_y))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 64
      (_x.pos_x, _x.pos_y, _x.pos_theta, _x.v_x, _x.v_y, _x.v_theta, _x.bola_x, _x.bola_y,) = _get_struct_8q().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_8q().pack(_x.pos_x, _x.pos_y, _x.pos_theta, _x.v_x, _x.v_y, _x.v_theta, _x.bola_x, _x.bola_y))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 64
      (_x.pos_x, _x.pos_y, _x.pos_theta, _x.v_x, _x.v_y, _x.v_theta, _x.bola_x, _x.bola_y,) = _get_struct_8q().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_8q = None
def _get_struct_8q():
    global _struct_8q
    if _struct_8q is None:
        _struct_8q = struct.Struct("<8q")
    return _struct_8q
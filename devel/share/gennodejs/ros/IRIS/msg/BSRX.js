// Auto-generated. Do not edit!

// (in-package IRIS.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class BSRX {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
      this.x_tujuan = null;
      this.y_tujuan = null;
    }
    else {
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
      if (initObj.hasOwnProperty('x_tujuan')) {
        this.x_tujuan = initObj.x_tujuan
      }
      else {
        this.x_tujuan = 0;
      }
      if (initObj.hasOwnProperty('y_tujuan')) {
        this.y_tujuan = initObj.y_tujuan
      }
      else {
        this.y_tujuan = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BSRX
    // Serialize message field [status]
    bufferOffset = _serializer.int64(obj.status, buffer, bufferOffset);
    // Serialize message field [x_tujuan]
    bufferOffset = _serializer.int64(obj.x_tujuan, buffer, bufferOffset);
    // Serialize message field [y_tujuan]
    bufferOffset = _serializer.int64(obj.y_tujuan, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BSRX
    let len;
    let data = new BSRX(null);
    // Deserialize message field [status]
    data.status = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [x_tujuan]
    data.x_tujuan = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [y_tujuan]
    data.y_tujuan = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'IRIS/BSRX';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a32a211428e7e0b8ebe12ebf69d1f515';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 status
    int64 x_tujuan
    int64 y_tujuan
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BSRX(null);
    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    if (msg.x_tujuan !== undefined) {
      resolved.x_tujuan = msg.x_tujuan;
    }
    else {
      resolved.x_tujuan = 0
    }

    if (msg.y_tujuan !== undefined) {
      resolved.y_tujuan = msg.y_tujuan;
    }
    else {
      resolved.y_tujuan = 0
    }

    return resolved;
    }
};

module.exports = BSRX;

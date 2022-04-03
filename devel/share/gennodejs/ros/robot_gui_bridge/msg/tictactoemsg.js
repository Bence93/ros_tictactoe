// Auto-generated. Do not edit!

// (in-package robot_gui_bridge.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class tictactoemsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.player = null;
      this.field = null;
    }
    else {
      if (initObj.hasOwnProperty('player')) {
        this.player = initObj.player
      }
      else {
        this.player = '';
      }
      if (initObj.hasOwnProperty('field')) {
        this.field = initObj.field
      }
      else {
        this.field = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type tictactoemsg
    // Serialize message field [player]
    bufferOffset = _serializer.string(obj.player, buffer, bufferOffset);
    // Serialize message field [field]
    bufferOffset = _serializer.string(obj.field, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type tictactoemsg
    let len;
    let data = new tictactoemsg(null);
    // Deserialize message field [player]
    data.player = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [field]
    data.field = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.player);
    length += _getByteLength(object.field);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robot_gui_bridge/tictactoemsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ba712bc9f02a35884a6218f01ddb91fc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string player
    string field
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new tictactoemsg(null);
    if (msg.player !== undefined) {
      resolved.player = msg.player;
    }
    else {
      resolved.player = ''
    }

    if (msg.field !== undefined) {
      resolved.field = msg.field;
    }
    else {
      resolved.field = ''
    }

    return resolved;
    }
};

module.exports = tictactoemsg;

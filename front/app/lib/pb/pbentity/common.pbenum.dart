//
//  Generated code. Do not modify.
//  source: pbentity/common.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class Role extends $pb.ProtobufEnum {
  static const Role RoleNone = Role._(0, _omitEnumNames ? '' : 'RoleNone');
  static const Role RoleSystem = Role._(1, _omitEnumNames ? '' : 'RoleSystem');
  static const Role RoleUser = Role._(2, _omitEnumNames ? '' : 'RoleUser');
  static const Role RoleAssistant = Role._(3, _omitEnumNames ? '' : 'RoleAssistant');

  static const $core.List<Role> values = <Role> [
    RoleNone,
    RoleSystem,
    RoleUser,
    RoleAssistant,
  ];

  static final $core.Map<$core.int, Role> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Role? valueOf($core.int value) => _byValue[value];

  const Role._($core.int v, $core.String n) : super(v, n);
}

class MsgType extends $pb.ProtobufEnum {
  static const MsgType MsgTypeNone = MsgType._(0, _omitEnumNames ? '' : 'MsgTypeNone');
  static const MsgType MsgTypeText = MsgType._(1, _omitEnumNames ? '' : 'MsgTypeText');
  static const MsgType MsgTypeImage = MsgType._(2, _omitEnumNames ? '' : 'MsgTypeImage');
  static const MsgType MsgTypeAudio = MsgType._(3, _omitEnumNames ? '' : 'MsgTypeAudio');
  static const MsgType MsgTypeVideo = MsgType._(4, _omitEnumNames ? '' : 'MsgTypeVideo');
  static const MsgType MsgTypeFile = MsgType._(5, _omitEnumNames ? '' : 'MsgTypeFile');

  static const $core.List<MsgType> values = <MsgType> [
    MsgTypeNone,
    MsgTypeText,
    MsgTypeImage,
    MsgTypeAudio,
    MsgTypeVideo,
    MsgTypeFile,
  ];

  static final $core.Map<$core.int, MsgType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static MsgType? valueOf($core.int value) => _byValue[value];

  const MsgType._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');

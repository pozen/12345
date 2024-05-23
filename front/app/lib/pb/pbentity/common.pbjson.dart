//
//  Generated code. Do not modify.
//  source: pbentity/common.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use roleDescriptor instead')
const Role$json = {
  '1': 'Role',
  '2': [
    {'1': 'RoleNone', '2': 0},
    {'1': 'RoleSystem', '2': 1},
    {'1': 'RoleUser', '2': 2},
    {'1': 'RoleAssistant', '2': 3},
  ],
};

/// Descriptor for `Role`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List roleDescriptor = $convert.base64Decode(
    'CgRSb2xlEgwKCFJvbGVOb25lEAASDgoKUm9sZVN5c3RlbRABEgwKCFJvbGVVc2VyEAISEQoNUm'
    '9sZUFzc2lzdGFudBAD');

@$core.Deprecated('Use msgTypeDescriptor instead')
const MsgType$json = {
  '1': 'MsgType',
  '2': [
    {'1': 'MsgTypeNone', '2': 0},
    {'1': 'MsgTypeText', '2': 1},
    {'1': 'MsgTypeImage', '2': 2},
    {'1': 'MsgTypeAudio', '2': 3},
    {'1': 'MsgTypeVideo', '2': 4},
    {'1': 'MsgTypeFile', '2': 5},
  ],
};

/// Descriptor for `MsgType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List msgTypeDescriptor = $convert.base64Decode(
    'CgdNc2dUeXBlEg8KC01zZ1R5cGVOb25lEAASDwoLTXNnVHlwZVRleHQQARIQCgxNc2dUeXBlSW'
    '1hZ2UQAhIQCgxNc2dUeXBlQXVkaW8QAxIQCgxNc2dUeXBlVmlkZW8QBBIPCgtNc2dUeXBlRmls'
    'ZRAF');

@$core.Deprecated('Use modelAnswerDescriptor instead')
const ModelAnswer$json = {
  '1': 'ModelAnswer',
  '2': [
    {'1': 'Answer', '3': 1, '4': 1, '5': 9, '10': 'Answer'},
    {'1': 'Score', '3': 2, '4': 1, '5': 5, '10': 'Score'},
    {'1': 'Error', '3': 3, '4': 1, '5': 9, '10': 'Error'},
    {'1': 'TokenCount', '3': 4, '4': 1, '5': 5, '10': 'TokenCount'},
    {'1': 'TokenPrice', '3': 5, '4': 1, '5': 1, '10': 'TokenPrice'},
  ],
};

/// Descriptor for `ModelAnswer`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List modelAnswerDescriptor = $convert.base64Decode(
    'CgtNb2RlbEFuc3dlchIWCgZBbnN3ZXIYASABKAlSBkFuc3dlchIUCgVTY29yZRgCIAEoBVIFU2'
    'NvcmUSFAoFRXJyb3IYAyABKAlSBUVycm9yEh4KClRva2VuQ291bnQYBCABKAVSClRva2VuQ291'
    'bnQSHgoKVG9rZW5QcmljZRgFIAEoAVIKVG9rZW5QcmljZQ==');

@$core.Deprecated('Use botSettingDescriptor instead')
const BotSetting$json = {
  '1': 'BotSetting',
  '2': [
    {'1': 'ModelId', '3': 1, '4': 1, '5': 9, '10': 'ModelId'},
    {'1': 'Prompt', '3': 2, '4': 1, '5': 9, '10': 'Prompt'},
    {'1': 'MaxHistoryLen', '3': 3, '4': 1, '5': 5, '10': 'MaxHistoryLen'},
  ],
};

/// Descriptor for `BotSetting`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List botSettingDescriptor = $convert.base64Decode(
    'CgpCb3RTZXR0aW5nEhgKB01vZGVsSWQYASABKAlSB01vZGVsSWQSFgoGUHJvbXB0GAIgASgJUg'
    'ZQcm9tcHQSJAoNTWF4SGlzdG9yeUxlbhgDIAEoBVINTWF4SGlzdG9yeUxlbg==');

@$core.Deprecated('Use sessionDescriptor instead')
const Session$json = {
  '1': 'Session',
  '2': [
    {'1': 'Q', '3': 1, '4': 1, '5': 9, '10': 'Q'},
    {'1': 'HistoryMsgs', '3': 2, '4': 3, '5': 11, '6': '.pbentity.Message', '10': 'HistoryMsgs'},
    {'1': 'SId', '3': 3, '4': 1, '5': 9, '10': 'SId'},
    {'1': 'UseStream', '3': 4, '4': 1, '5': 8, '10': 'UseStream'},
  ],
};

/// Descriptor for `Session`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sessionDescriptor = $convert.base64Decode(
    'CgdTZXNzaW9uEgwKAVEYASABKAlSAVESMwoLSGlzdG9yeU1zZ3MYAiADKAsyES5wYmVudGl0eS'
    '5NZXNzYWdlUgtIaXN0b3J5TXNncxIQCgNTSWQYAyABKAlSA1NJZBIcCglVc2VTdHJlYW0YBCAB'
    'KAhSCVVzZVN0cmVhbQ==');


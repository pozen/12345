//
//  Generated code. Do not modify.
//  source: grpc/v1/api.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use errCodeDescriptor instead')
const ErrCode$json = {
  '1': 'ErrCode',
  '2': [
    {'1': 'Code', '3': 1, '4': 1, '5': 3, '10': 'Code'},
    {'1': 'Msg', '3': 2, '4': 1, '5': 9, '10': 'Msg'},
  ],
};

/// Descriptor for `ErrCode`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List errCodeDescriptor = $convert.base64Decode(
    'CgdFcnJDb2RlEhIKBENvZGUYASABKANSBENvZGUSEAoDTXNnGAIgASgJUgNNc2c=');

@$core.Deprecated('Use commonResDescriptor instead')
const CommonRes$json = {
  '1': 'CommonRes',
  '2': [
    {'1': 'EC', '3': 1, '4': 1, '5': 11, '6': '.grpc.ErrCode', '10': 'EC'},
  ],
};

/// Descriptor for `CommonRes`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commonResDescriptor = $convert.base64Decode(
    'CglDb21tb25SZXMSHQoCRUMYASABKAsyDS5ncnBjLkVyckNvZGVSAkVD');

@$core.Deprecated('Use createToolRequestDescriptor instead')
const CreateToolRequest$json = {
  '1': 'CreateToolRequest',
  '2': [
    {'1': 'tool', '3': 1, '4': 1, '5': 11, '6': '.pbentity.Tool', '10': 'tool'},
  ],
};

/// Descriptor for `CreateToolRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createToolRequestDescriptor = $convert.base64Decode(
    'ChFDcmVhdGVUb29sUmVxdWVzdBIiCgR0b29sGAEgASgLMg4ucGJlbnRpdHkuVG9vbFIEdG9vbA'
    '==');

@$core.Deprecated('Use createToolResponseDescriptor instead')
const CreateToolResponse$json = {
  '1': 'CreateToolResponse',
  '2': [
    {'1': 'EC', '3': 1, '4': 1, '5': 11, '6': '.grpc.ErrCode', '10': 'EC'},
    {'1': 'tool', '3': 2, '4': 1, '5': 11, '6': '.pbentity.Tool', '10': 'tool'},
  ],
};

/// Descriptor for `CreateToolResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createToolResponseDescriptor = $convert.base64Decode(
    'ChJDcmVhdGVUb29sUmVzcG9uc2USHQoCRUMYASABKAsyDS5ncnBjLkVyckNvZGVSAkVDEiIKBH'
    'Rvb2wYAiABKAsyDi5wYmVudGl0eS5Ub29sUgR0b29s');

@$core.Deprecated('Use getToolListRequestDescriptor instead')
const GetToolListRequest$json = {
  '1': 'GetToolListRequest',
  '2': [
    {'1': 'Type', '3': 2, '4': 1, '5': 9, '10': 'Type'},
    {'1': 'From', '3': 3, '4': 1, '5': 9, '10': 'From'},
  ],
};

/// Descriptor for `GetToolListRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getToolListRequestDescriptor = $convert.base64Decode(
    'ChJHZXRUb29sTGlzdFJlcXVlc3QSEgoEVHlwZRgCIAEoCVIEVHlwZRISCgRGcm9tGAMgASgJUg'
    'RGcm9t');

@$core.Deprecated('Use getToolListResponseDescriptor instead')
const GetToolListResponse$json = {
  '1': 'GetToolListResponse',
  '2': [
    {'1': 'EC', '3': 1, '4': 1, '5': 11, '6': '.grpc.ErrCode', '10': 'EC'},
    {'1': 'tools', '3': 2, '4': 3, '5': 11, '6': '.pbentity.Tool', '10': 'tools'},
  ],
};

/// Descriptor for `GetToolListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getToolListResponseDescriptor = $convert.base64Decode(
    'ChNHZXRUb29sTGlzdFJlc3BvbnNlEh0KAkVDGAEgASgLMg0uZ3JwYy5FcnJDb2RlUgJFQxIkCg'
    'V0b29scxgCIAMoCzIOLnBiZW50aXR5LlRvb2xSBXRvb2xz');

@$core.Deprecated('Use delToolsRequestDescriptor instead')
const DelToolsRequest$json = {
  '1': 'DelToolsRequest',
  '2': [
    {'1': 'Ids', '3': 1, '4': 3, '5': 9, '10': 'Ids'},
  ],
};

/// Descriptor for `DelToolsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List delToolsRequestDescriptor = $convert.base64Decode(
    'Cg9EZWxUb29sc1JlcXVlc3QSEAoDSWRzGAEgAygJUgNJZHM=');

@$core.Deprecated('Use delToolsResponseDescriptor instead')
const DelToolsResponse$json = {
  '1': 'DelToolsResponse',
  '2': [
    {'1': 'EC', '3': 1, '4': 1, '5': 11, '6': '.grpc.ErrCode', '10': 'EC'},
  ],
};

/// Descriptor for `DelToolsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List delToolsResponseDescriptor = $convert.base64Decode(
    'ChBEZWxUb29sc1Jlc3BvbnNlEh0KAkVDGAEgASgLMg0uZ3JwYy5FcnJDb2RlUgJFQw==');

@$core.Deprecated('Use callToolRequestDescriptor instead')
const CallToolRequest$json = {
  '1': 'CallToolRequest',
  '2': [
    {'1': 'Id', '3': 1, '4': 1, '5': 9, '10': 'Id'},
    {'1': 'stream', '3': 2, '4': 1, '5': 8, '10': 'stream'},
  ],
};

/// Descriptor for `CallToolRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List callToolRequestDescriptor = $convert.base64Decode(
    'Cg9DYWxsVG9vbFJlcXVlc3QSDgoCSWQYASABKAlSAklkEhYKBnN0cmVhbRgCIAEoCFIGc3RyZW'
    'Ft');

@$core.Deprecated('Use callToolResponseDescriptor instead')
const CallToolResponse$json = {
  '1': 'CallToolResponse',
  '2': [
    {'1': 'EC', '3': 1, '4': 1, '5': 11, '6': '.grpc.ErrCode', '10': 'EC'},
    {'1': 'data', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Any', '10': 'data'},
  ],
};

/// Descriptor for `CallToolResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List callToolResponseDescriptor = $convert.base64Decode(
    'ChBDYWxsVG9vbFJlc3BvbnNlEh0KAkVDGAEgASgLMg0uZ3JwYy5FcnJDb2RlUgJFQxIoCgRkYX'
    'RhGAIgASgLMhQuZ29vZ2xlLnByb3RvYnVmLkFueVIEZGF0YQ==');

@$core.Deprecated('Use getDialogListRequestDescriptor instead')
const GetDialogListRequest$json = {
  '1': 'GetDialogListRequest',
  '2': [
    {'1': 'UId', '3': 1, '4': 1, '5': 9, '10': 'UId'},
    {'1': 'OId', '3': 2, '4': 1, '5': 9, '10': 'OId'},
    {'1': 'Page', '3': 3, '4': 1, '5': 5, '10': 'Page'},
    {'1': 'PageSize', '3': 4, '4': 1, '5': 5, '10': 'PageSize'},
  ],
};

/// Descriptor for `GetDialogListRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getDialogListRequestDescriptor = $convert.base64Decode(
    'ChRHZXREaWFsb2dMaXN0UmVxdWVzdBIQCgNVSWQYASABKAlSA1VJZBIQCgNPSWQYAiABKAlSA0'
    '9JZBISCgRQYWdlGAMgASgFUgRQYWdlEhoKCFBhZ2VTaXplGAQgASgFUghQYWdlU2l6ZQ==');

@$core.Deprecated('Use getDialogListResponseDescriptor instead')
const GetDialogListResponse$json = {
  '1': 'GetDialogListResponse',
  '2': [
    {'1': 'EC', '3': 1, '4': 1, '5': 11, '6': '.grpc.ErrCode', '10': 'EC'},
    {'1': 'Dialogs', '3': 2, '4': 3, '5': 11, '6': '.pbentity.Dialog', '10': 'Dialogs'},
  ],
};

/// Descriptor for `GetDialogListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getDialogListResponseDescriptor = $convert.base64Decode(
    'ChVHZXREaWFsb2dMaXN0UmVzcG9uc2USHQoCRUMYASABKAsyDS5ncnBjLkVyckNvZGVSAkVDEi'
    'oKB0RpYWxvZ3MYAiADKAsyEC5wYmVudGl0eS5EaWFsb2dSB0RpYWxvZ3M=');

@$core.Deprecated('Use getDialogDetailRequestDescriptor instead')
const GetDialogDetailRequest$json = {
  '1': 'GetDialogDetailRequest',
  '2': [
    {'1': 'UId', '3': 1, '4': 1, '5': 9, '10': 'UId'},
    {'1': 'OId', '3': 2, '4': 1, '5': 9, '10': 'OId'},
    {'1': 'SId', '3': 3, '4': 1, '5': 9, '10': 'SId'},
  ],
};

/// Descriptor for `GetDialogDetailRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getDialogDetailRequestDescriptor = $convert.base64Decode(
    'ChZHZXREaWFsb2dEZXRhaWxSZXF1ZXN0EhAKA1VJZBgBIAEoCVIDVUlkEhAKA09JZBgCIAEoCV'
    'IDT0lkEhAKA1NJZBgDIAEoCVIDU0lk');

@$core.Deprecated('Use getDialogDetailResponseDescriptor instead')
const GetDialogDetailResponse$json = {
  '1': 'GetDialogDetailResponse',
  '2': [
    {'1': 'EC', '3': 1, '4': 1, '5': 11, '6': '.grpc.ErrCode', '10': 'EC'},
    {'1': 'Dialog', '3': 2, '4': 1, '5': 11, '6': '.pbentity.Dialog', '10': 'Dialog'},
  ],
};

/// Descriptor for `GetDialogDetailResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getDialogDetailResponseDescriptor = $convert.base64Decode(
    'ChdHZXREaWFsb2dEZXRhaWxSZXNwb25zZRIdCgJFQxgBIAEoCzINLmdycGMuRXJyQ29kZVICRU'
    'MSKAoGRGlhbG9nGAIgASgLMhAucGJlbnRpdHkuRGlhbG9nUgZEaWFsb2c=');

@$core.Deprecated('Use addDialogRequestDescriptor instead')
const AddDialogRequest$json = {
  '1': 'AddDialogRequest',
  '2': [
    {'1': 'UId', '3': 1, '4': 1, '5': 9, '10': 'UId'},
    {'1': 'OId', '3': 2, '4': 1, '5': 9, '10': 'OId'},
    {'1': 'Id', '3': 4, '4': 1, '5': 9, '10': 'Id'},
    {'1': 'Title', '3': 5, '4': 1, '5': 9, '10': 'Title'},
  ],
};

/// Descriptor for `AddDialogRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addDialogRequestDescriptor = $convert.base64Decode(
    'ChBBZGREaWFsb2dSZXF1ZXN0EhAKA1VJZBgBIAEoCVIDVUlkEhAKA09JZBgCIAEoCVIDT0lkEg'
    '4KAklkGAQgASgJUgJJZBIUCgVUaXRsZRgFIAEoCVIFVGl0bGU=');

@$core.Deprecated('Use addDialogResponseDescriptor instead')
const AddDialogResponse$json = {
  '1': 'AddDialogResponse',
  '2': [
    {'1': 'EC', '3': 1, '4': 1, '5': 11, '6': '.grpc.ErrCode', '10': 'EC'},
    {'1': 'Dialog', '3': 2, '4': 1, '5': 11, '6': '.pbentity.Dialog', '10': 'Dialog'},
  ],
};

/// Descriptor for `AddDialogResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addDialogResponseDescriptor = $convert.base64Decode(
    'ChFBZGREaWFsb2dSZXNwb25zZRIdCgJFQxgBIAEoCzINLmdycGMuRXJyQ29kZVICRUMSKAoGRG'
    'lhbG9nGAIgASgLMhAucGJlbnRpdHkuRGlhbG9nUgZEaWFsb2c=');

@$core.Deprecated('Use delDialogRequestDescriptor instead')
const DelDialogRequest$json = {
  '1': 'DelDialogRequest',
  '2': [
    {'1': 'UId', '3': 1, '4': 1, '5': 9, '10': 'UId'},
    {'1': 'OId', '3': 2, '4': 1, '5': 9, '10': 'OId'},
    {'1': 'SId', '3': 3, '4': 1, '5': 9, '10': 'SId'},
  ],
};

/// Descriptor for `DelDialogRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List delDialogRequestDescriptor = $convert.base64Decode(
    'ChBEZWxEaWFsb2dSZXF1ZXN0EhAKA1VJZBgBIAEoCVIDVUlkEhAKA09JZBgCIAEoCVIDT0lkEh'
    'AKA1NJZBgDIAEoCVIDU0lk');

@$core.Deprecated('Use delDialogResponseDescriptor instead')
const DelDialogResponse$json = {
  '1': 'DelDialogResponse',
  '2': [
    {'1': 'EC', '3': 1, '4': 1, '5': 11, '6': '.grpc.ErrCode', '10': 'EC'},
  ],
};

/// Descriptor for `DelDialogResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List delDialogResponseDescriptor = $convert.base64Decode(
    'ChFEZWxEaWFsb2dSZXNwb25zZRIdCgJFQxgBIAEoCzINLmdycGMuRXJyQ29kZVICRUM=');

@$core.Deprecated('Use getDialogMsgListRequestDescriptor instead')
const GetDialogMsgListRequest$json = {
  '1': 'GetDialogMsgListRequest',
  '2': [
    {'1': 'UId', '3': 1, '4': 1, '5': 9, '10': 'UId'},
    {'1': 'OId', '3': 2, '4': 1, '5': 9, '10': 'OId'},
    {'1': 'SId', '3': 3, '4': 1, '5': 9, '10': 'SId'},
    {'1': 'Page', '3': 4, '4': 1, '5': 5, '10': 'Page'},
    {'1': 'PageSize', '3': 5, '4': 1, '5': 5, '10': 'PageSize'},
  ],
};

/// Descriptor for `GetDialogMsgListRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getDialogMsgListRequestDescriptor = $convert.base64Decode(
    'ChdHZXREaWFsb2dNc2dMaXN0UmVxdWVzdBIQCgNVSWQYASABKAlSA1VJZBIQCgNPSWQYAiABKA'
    'lSA09JZBIQCgNTSWQYAyABKAlSA1NJZBISCgRQYWdlGAQgASgFUgRQYWdlEhoKCFBhZ2VTaXpl'
    'GAUgASgFUghQYWdlU2l6ZQ==');

@$core.Deprecated('Use getDialogMsgListResponseDescriptor instead')
const GetDialogMsgListResponse$json = {
  '1': 'GetDialogMsgListResponse',
  '2': [
    {'1': 'EC', '3': 1, '4': 1, '5': 11, '6': '.grpc.ErrCode', '10': 'EC'},
    {'1': 'Msgs', '3': 2, '4': 3, '5': 11, '6': '.pbentity.Message', '10': 'Msgs'},
  ],
};

/// Descriptor for `GetDialogMsgListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getDialogMsgListResponseDescriptor = $convert.base64Decode(
    'ChhHZXREaWFsb2dNc2dMaXN0UmVzcG9uc2USHQoCRUMYASABKAsyDS5ncnBjLkVyckNvZGVSAk'
    'VDEiUKBE1zZ3MYAiADKAsyES5wYmVudGl0eS5NZXNzYWdlUgRNc2dz');

@$core.Deprecated('Use addDialogMsgRequestDescriptor instead')
const AddDialogMsgRequest$json = {
  '1': 'AddDialogMsgRequest',
  '2': [
    {'1': 'UId', '3': 1, '4': 1, '5': 9, '10': 'UId'},
    {'1': 'OId', '3': 2, '4': 1, '5': 9, '10': 'OId'},
    {'1': 'SId', '3': 3, '4': 1, '5': 9, '10': 'SId'},
    {'1': 'Msg', '3': 4, '4': 1, '5': 11, '6': '.pbentity.Message', '10': 'Msg'},
  ],
};

/// Descriptor for `AddDialogMsgRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addDialogMsgRequestDescriptor = $convert.base64Decode(
    'ChNBZGREaWFsb2dNc2dSZXF1ZXN0EhAKA1VJZBgBIAEoCVIDVUlkEhAKA09JZBgCIAEoCVIDT0'
    'lkEhAKA1NJZBgDIAEoCVIDU0lkEiMKA01zZxgEIAEoCzIRLnBiZW50aXR5Lk1lc3NhZ2VSA01z'
    'Zw==');

@$core.Deprecated('Use addDialogMsgResponseDescriptor instead')
const AddDialogMsgResponse$json = {
  '1': 'AddDialogMsgResponse',
  '2': [
    {'1': 'EC', '3': 1, '4': 1, '5': 11, '6': '.grpc.ErrCode', '10': 'EC'},
    {'1': 'Msg', '3': 2, '4': 1, '5': 11, '6': '.pbentity.Message', '10': 'Msg'},
  ],
};

/// Descriptor for `AddDialogMsgResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addDialogMsgResponseDescriptor = $convert.base64Decode(
    'ChRBZGREaWFsb2dNc2dSZXNwb25zZRIdCgJFQxgBIAEoCzINLmdycGMuRXJyQ29kZVICRUMSIw'
    'oDTXNnGAIgASgLMhEucGJlbnRpdHkuTWVzc2FnZVIDTXNn');

@$core.Deprecated('Use getProfileRequestDescriptor instead')
const GetProfileRequest$json = {
  '1': 'GetProfileRequest',
};

/// Descriptor for `GetProfileRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getProfileRequestDescriptor = $convert.base64Decode(
    'ChFHZXRQcm9maWxlUmVxdWVzdA==');

@$core.Deprecated('Use getProfileResponseDescriptor instead')
const GetProfileResponse$json = {
  '1': 'GetProfileResponse',
  '2': [
    {'1': 'EC', '3': 1, '4': 1, '5': 11, '6': '.grpc.ErrCode', '10': 'EC'},
    {'1': 'Profile', '3': 2, '4': 1, '5': 11, '6': '.pbentity.Uprofile', '10': 'Profile'},
  ],
};

/// Descriptor for `GetProfileResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getProfileResponseDescriptor = $convert.base64Decode(
    'ChJHZXRQcm9maWxlUmVzcG9uc2USHQoCRUMYASABKAsyDS5ncnBjLkVyckNvZGVSAkVDEiwKB1'
    'Byb2ZpbGUYAiABKAsyEi5wYmVudGl0eS5VcHJvZmlsZVIHUHJvZmlsZQ==');

@$core.Deprecated('Use updateProfileRequestDescriptor instead')
const UpdateProfileRequest$json = {
  '1': 'UpdateProfileRequest',
  '2': [
    {'1': 'Profile', '3': 1, '4': 1, '5': 11, '6': '.pbentity.Uprofile', '10': 'Profile'},
  ],
};

/// Descriptor for `UpdateProfileRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateProfileRequestDescriptor = $convert.base64Decode(
    'ChRVcGRhdGVQcm9maWxlUmVxdWVzdBIsCgdQcm9maWxlGAEgASgLMhIucGJlbnRpdHkuVXByb2'
    'ZpbGVSB1Byb2ZpbGU=');

@$core.Deprecated('Use updateProfileResponseDescriptor instead')
const UpdateProfileResponse$json = {
  '1': 'UpdateProfileResponse',
  '2': [
    {'1': 'EC', '3': 1, '4': 1, '5': 11, '6': '.grpc.ErrCode', '10': 'EC'},
  ],
};

/// Descriptor for `UpdateProfileResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateProfileResponseDescriptor = $convert.base64Decode(
    'ChVVcGRhdGVQcm9maWxlUmVzcG9uc2USHQoCRUMYASABKAsyDS5ncnBjLkVyckNvZGVSAkVD');

@$core.Deprecated('Use getAccountRequestDescriptor instead')
const GetAccountRequest$json = {
  '1': 'GetAccountRequest',
};

/// Descriptor for `GetAccountRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAccountRequestDescriptor = $convert.base64Decode(
    'ChFHZXRBY2NvdW50UmVxdWVzdA==');

@$core.Deprecated('Use getAccountResponseDescriptor instead')
const GetAccountResponse$json = {
  '1': 'GetAccountResponse',
  '2': [
    {'1': 'EC', '3': 1, '4': 1, '5': 11, '6': '.grpc.ErrCode', '10': 'EC'},
    {'1': 'Account', '3': 2, '4': 1, '5': 11, '6': '.pbentity.Account', '10': 'Account'},
  ],
};

/// Descriptor for `GetAccountResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAccountResponseDescriptor = $convert.base64Decode(
    'ChJHZXRBY2NvdW50UmVzcG9uc2USHQoCRUMYASABKAsyDS5ncnBjLkVyckNvZGVSAkVDEisKB0'
    'FjY291bnQYAiABKAsyES5wYmVudGl0eS5BY2NvdW50UgdBY2NvdW50');

@$core.Deprecated('Use preSignedUrlRequestDescriptor instead')
const PreSignedUrlRequest$json = {
  '1': 'PreSignedUrlRequest',
  '2': [
    {'1': 'objName', '3': 1, '4': 1, '5': 9, '10': 'objName'},
  ],
};

/// Descriptor for `PreSignedUrlRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List preSignedUrlRequestDescriptor = $convert.base64Decode(
    'ChNQcmVTaWduZWRVcmxSZXF1ZXN0EhgKB29iak5hbWUYASABKAlSB29iak5hbWU=');

@$core.Deprecated('Use preSignedUrlResponseDescriptor instead')
const PreSignedUrlResponse$json = {
  '1': 'PreSignedUrlResponse',
  '2': [
    {'1': 'EC', '3': 1, '4': 1, '5': 11, '6': '.grpc.ErrCode', '10': 'EC'},
    {'1': 'putUrl', '3': 2, '4': 1, '5': 9, '10': 'putUrl'},
    {'1': 'url', '3': 3, '4': 1, '5': 9, '10': 'url'},
  ],
};

/// Descriptor for `PreSignedUrlResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List preSignedUrlResponseDescriptor = $convert.base64Decode(
    'ChRQcmVTaWduZWRVcmxSZXNwb25zZRIdCgJFQxgBIAEoCzINLmdycGMuRXJyQ29kZVICRUMSFg'
    'oGcHV0VXJsGAIgASgJUgZwdXRVcmwSEAoDdXJsGAMgASgJUgN1cmw=');


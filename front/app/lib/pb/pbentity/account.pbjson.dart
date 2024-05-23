//
//  Generated code. Do not modify.
//  source: pbentity/account.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use accountDescriptor instead')
const Account$json = {
  '1': 'Account',
  '2': [
    {'1': 'Id', '3': 1, '4': 1, '5': 9, '10': 'Id'},
    {'1': 'GroupId', '3': 2, '4': 1, '5': 9, '10': 'GroupId'},
    {'1': 'OrgId', '3': 3, '4': 1, '5': 9, '10': 'OrgId'},
    {'1': 'Uid', '3': 4, '4': 1, '5': 9, '10': 'Uid'},
    {'1': 'Status', '3': 5, '4': 1, '5': 9, '10': 'Status'},
    {'1': 'Balance', '3': 6, '4': 1, '5': 3, '10': 'Balance'},
    {'1': 'Cost', '3': 7, '4': 1, '5': 3, '10': 'Cost'},
    {'1': 'CostTokens', '3': 8, '4': 1, '5': 3, '10': 'CostTokens'},
    {'1': 'CreatedAt', '3': 9, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'CreatedAt'},
    {'1': 'UpdatedAt', '3': 10, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'UpdatedAt'},
  ],
};

/// Descriptor for `Account`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountDescriptor = $convert.base64Decode(
    'CgdBY2NvdW50Eg4KAklkGAEgASgJUgJJZBIYCgdHcm91cElkGAIgASgJUgdHcm91cElkEhQKBU'
    '9yZ0lkGAMgASgJUgVPcmdJZBIQCgNVaWQYBCABKAlSA1VpZBIWCgZTdGF0dXMYBSABKAlSBlN0'
    'YXR1cxIYCgdCYWxhbmNlGAYgASgDUgdCYWxhbmNlEhIKBENvc3QYByABKANSBENvc3QSHgoKQ2'
    '9zdFRva2VucxgIIAEoA1IKQ29zdFRva2VucxI4CglDcmVhdGVkQXQYCSABKAsyGi5nb29nbGUu'
    'cHJvdG9idWYuVGltZXN0YW1wUglDcmVhdGVkQXQSOAoJVXBkYXRlZEF0GAogASgLMhouZ29vZ2'
    'xlLnByb3RvYnVmLlRpbWVzdGFtcFIJVXBkYXRlZEF0');


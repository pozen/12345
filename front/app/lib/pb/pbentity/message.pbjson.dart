//
//  Generated code. Do not modify.
//  source: pbentity/message.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use messageDescriptor instead')
const Message$json = {
  '1': 'Message',
  '2': [
    {'1': 'Id', '3': 1, '4': 1, '5': 9, '10': 'Id'},
    {'1': 'Uid', '3': 2, '4': 1, '5': 9, '10': 'Uid'},
    {'1': 'Sid', '3': 3, '4': 1, '5': 9, '10': 'Sid'},
    {'1': 'R', '3': 4, '4': 1, '5': 3, '10': 'R'},
    {'1': 'Content', '3': 5, '4': 1, '5': 9, '10': 'Content'},
    {'1': 'CreatedAt', '3': 6, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'CreatedAt'},
    {'1': 'UpdatedAt', '3': 7, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'UpdatedAt'},
    {'1': 'OrgId', '3': 8, '4': 1, '5': 9, '10': 'OrgId'},
    {'1': 'Url', '3': 9, '4': 1, '5': 9, '10': 'Url'},
    {'1': 'Md5', '3': 10, '4': 1, '5': 9, '10': 'Md5'},
    {'1': 'Width', '3': 11, '4': 1, '5': 3, '10': 'Width'},
    {'1': 'Height', '3': 12, '4': 1, '5': 3, '10': 'Height'},
    {'1': 'T', '3': 13, '4': 1, '5': 3, '10': 'T'},
  ],
};

/// Descriptor for `Message`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageDescriptor = $convert.base64Decode(
    'CgdNZXNzYWdlEg4KAklkGAEgASgJUgJJZBIQCgNVaWQYAiABKAlSA1VpZBIQCgNTaWQYAyABKA'
    'lSA1NpZBIMCgFSGAQgASgDUgFSEhgKB0NvbnRlbnQYBSABKAlSB0NvbnRlbnQSOAoJQ3JlYXRl'
    'ZEF0GAYgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIJQ3JlYXRlZEF0EjgKCVVwZG'
    'F0ZWRBdBgHIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCVVwZGF0ZWRBdBIUCgVP'
    'cmdJZBgIIAEoCVIFT3JnSWQSEAoDVXJsGAkgASgJUgNVcmwSEAoDTWQ1GAogASgJUgNNZDUSFA'
    'oFV2lkdGgYCyABKANSBVdpZHRoEhYKBkhlaWdodBgMIAEoA1IGSGVpZ2h0EgwKAVQYDSABKANS'
    'AVQ=');


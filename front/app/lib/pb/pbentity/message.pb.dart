//
//  Generated code. Do not modify.
//  source: pbentity/message.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../google/protobuf/timestamp.pb.dart' as $0;

class Message extends $pb.GeneratedMessage {
  factory Message({
    $core.String? id,
    $core.String? uid,
    $core.String? sid,
    $fixnum.Int64? r,
    $core.String? content,
    $0.Timestamp? createdAt,
    $0.Timestamp? updatedAt,
    $core.String? orgId,
    $core.String? url,
    $core.String? md5,
    $fixnum.Int64? width,
    $fixnum.Int64? height,
    $fixnum.Int64? t,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (uid != null) {
      $result.uid = uid;
    }
    if (sid != null) {
      $result.sid = sid;
    }
    if (r != null) {
      $result.r = r;
    }
    if (content != null) {
      $result.content = content;
    }
    if (createdAt != null) {
      $result.createdAt = createdAt;
    }
    if (updatedAt != null) {
      $result.updatedAt = updatedAt;
    }
    if (orgId != null) {
      $result.orgId = orgId;
    }
    if (url != null) {
      $result.url = url;
    }
    if (md5 != null) {
      $result.md5 = md5;
    }
    if (width != null) {
      $result.width = width;
    }
    if (height != null) {
      $result.height = height;
    }
    if (t != null) {
      $result.t = t;
    }
    return $result;
  }
  Message._() : super();
  factory Message.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Message.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Message', package: const $pb.PackageName(_omitMessageNames ? '' : 'pbentity'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'Id', protoName: 'Id')
    ..aOS(2, _omitFieldNames ? '' : 'Uid', protoName: 'Uid')
    ..aOS(3, _omitFieldNames ? '' : 'Sid', protoName: 'Sid')
    ..aInt64(4, _omitFieldNames ? '' : 'R', protoName: 'R')
    ..aOS(5, _omitFieldNames ? '' : 'Content', protoName: 'Content')
    ..aOM<$0.Timestamp>(6, _omitFieldNames ? '' : 'CreatedAt', protoName: 'CreatedAt', subBuilder: $0.Timestamp.create)
    ..aOM<$0.Timestamp>(7, _omitFieldNames ? '' : 'UpdatedAt', protoName: 'UpdatedAt', subBuilder: $0.Timestamp.create)
    ..aOS(8, _omitFieldNames ? '' : 'OrgId', protoName: 'OrgId')
    ..aOS(9, _omitFieldNames ? '' : 'Url', protoName: 'Url')
    ..aOS(10, _omitFieldNames ? '' : 'Md5', protoName: 'Md5')
    ..aInt64(11, _omitFieldNames ? '' : 'Width', protoName: 'Width')
    ..aInt64(12, _omitFieldNames ? '' : 'Height', protoName: 'Height')
    ..aInt64(13, _omitFieldNames ? '' : 'T', protoName: 'T')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Message clone() => Message()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Message copyWith(void Function(Message) updates) => super.copyWith((message) => updates(message as Message)) as Message;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Message create() => Message._();
  Message createEmptyInstance() => create();
  static $pb.PbList<Message> createRepeated() => $pb.PbList<Message>();
  @$core.pragma('dart2js:noInline')
  static Message getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Message>(create);
  static Message? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get uid => $_getSZ(1);
  @$pb.TagNumber(2)
  set uid($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUid() => $_has(1);
  @$pb.TagNumber(2)
  void clearUid() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get sid => $_getSZ(2);
  @$pb.TagNumber(3)
  set sid($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSid() => $_has(2);
  @$pb.TagNumber(3)
  void clearSid() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get r => $_getI64(3);
  @$pb.TagNumber(4)
  set r($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasR() => $_has(3);
  @$pb.TagNumber(4)
  void clearR() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get content => $_getSZ(4);
  @$pb.TagNumber(5)
  set content($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasContent() => $_has(4);
  @$pb.TagNumber(5)
  void clearContent() => clearField(5);

  @$pb.TagNumber(6)
  $0.Timestamp get createdAt => $_getN(5);
  @$pb.TagNumber(6)
  set createdAt($0.Timestamp v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasCreatedAt() => $_has(5);
  @$pb.TagNumber(6)
  void clearCreatedAt() => clearField(6);
  @$pb.TagNumber(6)
  $0.Timestamp ensureCreatedAt() => $_ensure(5);

  @$pb.TagNumber(7)
  $0.Timestamp get updatedAt => $_getN(6);
  @$pb.TagNumber(7)
  set updatedAt($0.Timestamp v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasUpdatedAt() => $_has(6);
  @$pb.TagNumber(7)
  void clearUpdatedAt() => clearField(7);
  @$pb.TagNumber(7)
  $0.Timestamp ensureUpdatedAt() => $_ensure(6);

  @$pb.TagNumber(8)
  $core.String get orgId => $_getSZ(7);
  @$pb.TagNumber(8)
  set orgId($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasOrgId() => $_has(7);
  @$pb.TagNumber(8)
  void clearOrgId() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get url => $_getSZ(8);
  @$pb.TagNumber(9)
  set url($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasUrl() => $_has(8);
  @$pb.TagNumber(9)
  void clearUrl() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get md5 => $_getSZ(9);
  @$pb.TagNumber(10)
  set md5($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasMd5() => $_has(9);
  @$pb.TagNumber(10)
  void clearMd5() => clearField(10);

  @$pb.TagNumber(11)
  $fixnum.Int64 get width => $_getI64(10);
  @$pb.TagNumber(11)
  set width($fixnum.Int64 v) { $_setInt64(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasWidth() => $_has(10);
  @$pb.TagNumber(11)
  void clearWidth() => clearField(11);

  @$pb.TagNumber(12)
  $fixnum.Int64 get height => $_getI64(11);
  @$pb.TagNumber(12)
  set height($fixnum.Int64 v) { $_setInt64(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasHeight() => $_has(11);
  @$pb.TagNumber(12)
  void clearHeight() => clearField(12);

  @$pb.TagNumber(13)
  $fixnum.Int64 get t => $_getI64(12);
  @$pb.TagNumber(13)
  set t($fixnum.Int64 v) { $_setInt64(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasT() => $_has(12);
  @$pb.TagNumber(13)
  void clearT() => clearField(13);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');

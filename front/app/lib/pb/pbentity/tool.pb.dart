//
//  Generated code. Do not modify.
//  source: pbentity/tool.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../google/protobuf/timestamp.pb.dart' as $0;

class Tool extends $pb.GeneratedMessage {
  factory Tool({
    $core.String? id,
    $core.String? type,
    $core.String? orgId,
    $core.String? uid,
    $core.String? name,
    $core.String? des,
    $core.String? code,
    $0.Timestamp? createdAt,
    $0.Timestamp? updatedAt,
    $core.Iterable<$core.String>? shared,
    $core.Iterable<$core.String>? tags,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (type != null) {
      $result.type = type;
    }
    if (orgId != null) {
      $result.orgId = orgId;
    }
    if (uid != null) {
      $result.uid = uid;
    }
    if (name != null) {
      $result.name = name;
    }
    if (des != null) {
      $result.des = des;
    }
    if (code != null) {
      $result.code = code;
    }
    if (createdAt != null) {
      $result.createdAt = createdAt;
    }
    if (updatedAt != null) {
      $result.updatedAt = updatedAt;
    }
    if (shared != null) {
      $result.shared.addAll(shared);
    }
    if (tags != null) {
      $result.tags.addAll(tags);
    }
    return $result;
  }
  Tool._() : super();
  factory Tool.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Tool.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Tool', package: const $pb.PackageName(_omitMessageNames ? '' : 'pbentity'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'Id', protoName: 'Id')
    ..aOS(2, _omitFieldNames ? '' : 'Type', protoName: 'Type')
    ..aOS(3, _omitFieldNames ? '' : 'OrgId', protoName: 'OrgId')
    ..aOS(4, _omitFieldNames ? '' : 'Uid', protoName: 'Uid')
    ..aOS(5, _omitFieldNames ? '' : 'Name', protoName: 'Name')
    ..aOS(6, _omitFieldNames ? '' : 'Des', protoName: 'Des')
    ..aOS(7, _omitFieldNames ? '' : 'Code', protoName: 'Code')
    ..aOM<$0.Timestamp>(8, _omitFieldNames ? '' : 'CreatedAt', protoName: 'CreatedAt', subBuilder: $0.Timestamp.create)
    ..aOM<$0.Timestamp>(9, _omitFieldNames ? '' : 'UpdatedAt', protoName: 'UpdatedAt', subBuilder: $0.Timestamp.create)
    ..pPS(10, _omitFieldNames ? '' : 'Shared', protoName: 'Shared')
    ..pPS(11, _omitFieldNames ? '' : 'Tags', protoName: 'Tags')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Tool clone() => Tool()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Tool copyWith(void Function(Tool) updates) => super.copyWith((message) => updates(message as Tool)) as Tool;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Tool create() => Tool._();
  Tool createEmptyInstance() => create();
  static $pb.PbList<Tool> createRepeated() => $pb.PbList<Tool>();
  @$core.pragma('dart2js:noInline')
  static Tool getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Tool>(create);
  static Tool? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get type => $_getSZ(1);
  @$pb.TagNumber(2)
  set type($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get orgId => $_getSZ(2);
  @$pb.TagNumber(3)
  set orgId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasOrgId() => $_has(2);
  @$pb.TagNumber(3)
  void clearOrgId() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get uid => $_getSZ(3);
  @$pb.TagNumber(4)
  set uid($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasUid() => $_has(3);
  @$pb.TagNumber(4)
  void clearUid() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get name => $_getSZ(4);
  @$pb.TagNumber(5)
  set name($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasName() => $_has(4);
  @$pb.TagNumber(5)
  void clearName() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get des => $_getSZ(5);
  @$pb.TagNumber(6)
  set des($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasDes() => $_has(5);
  @$pb.TagNumber(6)
  void clearDes() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get code => $_getSZ(6);
  @$pb.TagNumber(7)
  set code($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasCode() => $_has(6);
  @$pb.TagNumber(7)
  void clearCode() => clearField(7);

  @$pb.TagNumber(8)
  $0.Timestamp get createdAt => $_getN(7);
  @$pb.TagNumber(8)
  set createdAt($0.Timestamp v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasCreatedAt() => $_has(7);
  @$pb.TagNumber(8)
  void clearCreatedAt() => clearField(8);
  @$pb.TagNumber(8)
  $0.Timestamp ensureCreatedAt() => $_ensure(7);

  @$pb.TagNumber(9)
  $0.Timestamp get updatedAt => $_getN(8);
  @$pb.TagNumber(9)
  set updatedAt($0.Timestamp v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasUpdatedAt() => $_has(8);
  @$pb.TagNumber(9)
  void clearUpdatedAt() => clearField(9);
  @$pb.TagNumber(9)
  $0.Timestamp ensureUpdatedAt() => $_ensure(8);

  @$pb.TagNumber(10)
  $core.List<$core.String> get shared => $_getList(9);

  @$pb.TagNumber(11)
  $core.List<$core.String> get tags => $_getList(10);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');

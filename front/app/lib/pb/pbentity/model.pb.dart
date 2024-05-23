//
//  Generated code. Do not modify.
//  source: pbentity/model.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../google/protobuf/timestamp.pb.dart' as $0;

class Model extends $pb.GeneratedMessage {
  factory Model({
    $core.String? id,
    $core.String? uid,
    $core.String? name,
    $core.String? des,
    $core.String? avatar,
    $core.String? addr,
    $core.String? method,
    $core.String? contenttype,
    $core.String? headers,
    $core.String? reqbodytmpl,
    $core.String? respanswerkey,
    $0.Timestamp? createdAt,
    $0.Timestamp? updatedAt,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
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
    if (avatar != null) {
      $result.avatar = avatar;
    }
    if (addr != null) {
      $result.addr = addr;
    }
    if (method != null) {
      $result.method = method;
    }
    if (contenttype != null) {
      $result.contenttype = contenttype;
    }
    if (headers != null) {
      $result.headers = headers;
    }
    if (reqbodytmpl != null) {
      $result.reqbodytmpl = reqbodytmpl;
    }
    if (respanswerkey != null) {
      $result.respanswerkey = respanswerkey;
    }
    if (createdAt != null) {
      $result.createdAt = createdAt;
    }
    if (updatedAt != null) {
      $result.updatedAt = updatedAt;
    }
    return $result;
  }
  Model._() : super();
  factory Model.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Model.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Model', package: const $pb.PackageName(_omitMessageNames ? '' : 'pbentity'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'Id', protoName: 'Id')
    ..aOS(2, _omitFieldNames ? '' : 'Uid', protoName: 'Uid')
    ..aOS(3, _omitFieldNames ? '' : 'Name', protoName: 'Name')
    ..aOS(4, _omitFieldNames ? '' : 'Des', protoName: 'Des')
    ..aOS(5, _omitFieldNames ? '' : 'Avatar', protoName: 'Avatar')
    ..aOS(6, _omitFieldNames ? '' : 'Addr', protoName: 'Addr')
    ..aOS(7, _omitFieldNames ? '' : 'Method', protoName: 'Method')
    ..aOS(8, _omitFieldNames ? '' : 'Contenttype', protoName: 'Contenttype')
    ..aOS(9, _omitFieldNames ? '' : 'Headers', protoName: 'Headers')
    ..aOS(10, _omitFieldNames ? '' : 'Reqbodytmpl', protoName: 'Reqbodytmpl')
    ..aOS(11, _omitFieldNames ? '' : 'Respanswerkey', protoName: 'Respanswerkey')
    ..aOM<$0.Timestamp>(12, _omitFieldNames ? '' : 'CreatedAt', protoName: 'CreatedAt', subBuilder: $0.Timestamp.create)
    ..aOM<$0.Timestamp>(13, _omitFieldNames ? '' : 'UpdatedAt', protoName: 'UpdatedAt', subBuilder: $0.Timestamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Model clone() => Model()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Model copyWith(void Function(Model) updates) => super.copyWith((message) => updates(message as Model)) as Model;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Model create() => Model._();
  Model createEmptyInstance() => create();
  static $pb.PbList<Model> createRepeated() => $pb.PbList<Model>();
  @$core.pragma('dart2js:noInline')
  static Model getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Model>(create);
  static Model? _defaultInstance;

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
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get des => $_getSZ(3);
  @$pb.TagNumber(4)
  set des($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDes() => $_has(3);
  @$pb.TagNumber(4)
  void clearDes() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get avatar => $_getSZ(4);
  @$pb.TagNumber(5)
  set avatar($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasAvatar() => $_has(4);
  @$pb.TagNumber(5)
  void clearAvatar() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get addr => $_getSZ(5);
  @$pb.TagNumber(6)
  set addr($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasAddr() => $_has(5);
  @$pb.TagNumber(6)
  void clearAddr() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get method => $_getSZ(6);
  @$pb.TagNumber(7)
  set method($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasMethod() => $_has(6);
  @$pb.TagNumber(7)
  void clearMethod() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get contenttype => $_getSZ(7);
  @$pb.TagNumber(8)
  set contenttype($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasContenttype() => $_has(7);
  @$pb.TagNumber(8)
  void clearContenttype() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get headers => $_getSZ(8);
  @$pb.TagNumber(9)
  set headers($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasHeaders() => $_has(8);
  @$pb.TagNumber(9)
  void clearHeaders() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get reqbodytmpl => $_getSZ(9);
  @$pb.TagNumber(10)
  set reqbodytmpl($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasReqbodytmpl() => $_has(9);
  @$pb.TagNumber(10)
  void clearReqbodytmpl() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get respanswerkey => $_getSZ(10);
  @$pb.TagNumber(11)
  set respanswerkey($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasRespanswerkey() => $_has(10);
  @$pb.TagNumber(11)
  void clearRespanswerkey() => clearField(11);

  @$pb.TagNumber(12)
  $0.Timestamp get createdAt => $_getN(11);
  @$pb.TagNumber(12)
  set createdAt($0.Timestamp v) { setField(12, v); }
  @$pb.TagNumber(12)
  $core.bool hasCreatedAt() => $_has(11);
  @$pb.TagNumber(12)
  void clearCreatedAt() => clearField(12);
  @$pb.TagNumber(12)
  $0.Timestamp ensureCreatedAt() => $_ensure(11);

  @$pb.TagNumber(13)
  $0.Timestamp get updatedAt => $_getN(12);
  @$pb.TagNumber(13)
  set updatedAt($0.Timestamp v) { setField(13, v); }
  @$pb.TagNumber(13)
  $core.bool hasUpdatedAt() => $_has(12);
  @$pb.TagNumber(13)
  void clearUpdatedAt() => clearField(13);
  @$pb.TagNumber(13)
  $0.Timestamp ensureUpdatedAt() => $_ensure(12);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');

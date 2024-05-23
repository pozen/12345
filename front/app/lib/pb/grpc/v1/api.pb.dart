//
//  Generated code. Do not modify.
//  source: grpc/v1/api.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../../google/protobuf/any.pb.dart' as $2;
import '../../pbentity/account.pb.dart' as $6;
import '../../pbentity/dialog.pb.dart' as $3;
import '../../pbentity/message.pb.dart' as $4;
import '../../pbentity/tool.pb.dart' as $1;
import '../../pbentity/uprofile.pb.dart' as $5;

class ErrCode extends $pb.GeneratedMessage {
  factory ErrCode({
    $fixnum.Int64? code,
    $core.String? msg,
  }) {
    final $result = create();
    if (code != null) {
      $result.code = code;
    }
    if (msg != null) {
      $result.msg = msg;
    }
    return $result;
  }
  ErrCode._() : super();
  factory ErrCode.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ErrCode.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ErrCode', package: const $pb.PackageName(_omitMessageNames ? '' : 'grpc'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'Code', protoName: 'Code')
    ..aOS(2, _omitFieldNames ? '' : 'Msg', protoName: 'Msg')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ErrCode clone() => ErrCode()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ErrCode copyWith(void Function(ErrCode) updates) => super.copyWith((message) => updates(message as ErrCode)) as ErrCode;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ErrCode create() => ErrCode._();
  ErrCode createEmptyInstance() => create();
  static $pb.PbList<ErrCode> createRepeated() => $pb.PbList<ErrCode>();
  @$core.pragma('dart2js:noInline')
  static ErrCode getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ErrCode>(create);
  static ErrCode? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get code => $_getI64(0);
  @$pb.TagNumber(1)
  set code($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearCode() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get msg => $_getSZ(1);
  @$pb.TagNumber(2)
  set msg($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMsg() => $_has(1);
  @$pb.TagNumber(2)
  void clearMsg() => clearField(2);
}

class CommonRes extends $pb.GeneratedMessage {
  factory CommonRes({
    ErrCode? eC,
  }) {
    final $result = create();
    if (eC != null) {
      $result.eC = eC;
    }
    return $result;
  }
  CommonRes._() : super();
  factory CommonRes.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CommonRes.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CommonRes', package: const $pb.PackageName(_omitMessageNames ? '' : 'grpc'), createEmptyInstance: create)
    ..aOM<ErrCode>(1, _omitFieldNames ? '' : 'EC', protoName: 'EC', subBuilder: ErrCode.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CommonRes clone() => CommonRes()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CommonRes copyWith(void Function(CommonRes) updates) => super.copyWith((message) => updates(message as CommonRes)) as CommonRes;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CommonRes create() => CommonRes._();
  CommonRes createEmptyInstance() => create();
  static $pb.PbList<CommonRes> createRepeated() => $pb.PbList<CommonRes>();
  @$core.pragma('dart2js:noInline')
  static CommonRes getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CommonRes>(create);
  static CommonRes? _defaultInstance;

  @$pb.TagNumber(1)
  ErrCode get eC => $_getN(0);
  @$pb.TagNumber(1)
  set eC(ErrCode v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasEC() => $_has(0);
  @$pb.TagNumber(1)
  void clearEC() => clearField(1);
  @$pb.TagNumber(1)
  ErrCode ensureEC() => $_ensure(0);
}

/// tool ------------------------------------------------------------------------
class CreateToolRequest extends $pb.GeneratedMessage {
  factory CreateToolRequest({
    $1.Tool? tool,
  }) {
    final $result = create();
    if (tool != null) {
      $result.tool = tool;
    }
    return $result;
  }
  CreateToolRequest._() : super();
  factory CreateToolRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateToolRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateToolRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'grpc'), createEmptyInstance: create)
    ..aOM<$1.Tool>(1, _omitFieldNames ? '' : 'tool', subBuilder: $1.Tool.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateToolRequest clone() => CreateToolRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateToolRequest copyWith(void Function(CreateToolRequest) updates) => super.copyWith((message) => updates(message as CreateToolRequest)) as CreateToolRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateToolRequest create() => CreateToolRequest._();
  CreateToolRequest createEmptyInstance() => create();
  static $pb.PbList<CreateToolRequest> createRepeated() => $pb.PbList<CreateToolRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateToolRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateToolRequest>(create);
  static CreateToolRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $1.Tool get tool => $_getN(0);
  @$pb.TagNumber(1)
  set tool($1.Tool v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTool() => $_has(0);
  @$pb.TagNumber(1)
  void clearTool() => clearField(1);
  @$pb.TagNumber(1)
  $1.Tool ensureTool() => $_ensure(0);
}

class CreateToolResponse extends $pb.GeneratedMessage {
  factory CreateToolResponse({
    ErrCode? eC,
    $1.Tool? tool,
  }) {
    final $result = create();
    if (eC != null) {
      $result.eC = eC;
    }
    if (tool != null) {
      $result.tool = tool;
    }
    return $result;
  }
  CreateToolResponse._() : super();
  factory CreateToolResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateToolResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateToolResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'grpc'), createEmptyInstance: create)
    ..aOM<ErrCode>(1, _omitFieldNames ? '' : 'EC', protoName: 'EC', subBuilder: ErrCode.create)
    ..aOM<$1.Tool>(2, _omitFieldNames ? '' : 'tool', subBuilder: $1.Tool.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateToolResponse clone() => CreateToolResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateToolResponse copyWith(void Function(CreateToolResponse) updates) => super.copyWith((message) => updates(message as CreateToolResponse)) as CreateToolResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateToolResponse create() => CreateToolResponse._();
  CreateToolResponse createEmptyInstance() => create();
  static $pb.PbList<CreateToolResponse> createRepeated() => $pb.PbList<CreateToolResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateToolResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateToolResponse>(create);
  static CreateToolResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ErrCode get eC => $_getN(0);
  @$pb.TagNumber(1)
  set eC(ErrCode v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasEC() => $_has(0);
  @$pb.TagNumber(1)
  void clearEC() => clearField(1);
  @$pb.TagNumber(1)
  ErrCode ensureEC() => $_ensure(0);

  @$pb.TagNumber(2)
  $1.Tool get tool => $_getN(1);
  @$pb.TagNumber(2)
  set tool($1.Tool v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasTool() => $_has(1);
  @$pb.TagNumber(2)
  void clearTool() => clearField(2);
  @$pb.TagNumber(2)
  $1.Tool ensureTool() => $_ensure(1);
}

class GetToolListRequest extends $pb.GeneratedMessage {
  factory GetToolListRequest({
    $core.String? type,
    $core.String? from,
  }) {
    final $result = create();
    if (type != null) {
      $result.type = type;
    }
    if (from != null) {
      $result.from = from;
    }
    return $result;
  }
  GetToolListRequest._() : super();
  factory GetToolListRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetToolListRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetToolListRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'grpc'), createEmptyInstance: create)
    ..aOS(2, _omitFieldNames ? '' : 'Type', protoName: 'Type')
    ..aOS(3, _omitFieldNames ? '' : 'From', protoName: 'From')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetToolListRequest clone() => GetToolListRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetToolListRequest copyWith(void Function(GetToolListRequest) updates) => super.copyWith((message) => updates(message as GetToolListRequest)) as GetToolListRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetToolListRequest create() => GetToolListRequest._();
  GetToolListRequest createEmptyInstance() => create();
  static $pb.PbList<GetToolListRequest> createRepeated() => $pb.PbList<GetToolListRequest>();
  @$core.pragma('dart2js:noInline')
  static GetToolListRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetToolListRequest>(create);
  static GetToolListRequest? _defaultInstance;

  @$pb.TagNumber(2)
  $core.String get type => $_getSZ(0);
  @$pb.TagNumber(2)
  set type($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(2)
  void clearType() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get from => $_getSZ(1);
  @$pb.TagNumber(3)
  set from($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasFrom() => $_has(1);
  @$pb.TagNumber(3)
  void clearFrom() => clearField(3);
}

class GetToolListResponse extends $pb.GeneratedMessage {
  factory GetToolListResponse({
    ErrCode? eC,
    $core.Iterable<$1.Tool>? tools,
  }) {
    final $result = create();
    if (eC != null) {
      $result.eC = eC;
    }
    if (tools != null) {
      $result.tools.addAll(tools);
    }
    return $result;
  }
  GetToolListResponse._() : super();
  factory GetToolListResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetToolListResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetToolListResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'grpc'), createEmptyInstance: create)
    ..aOM<ErrCode>(1, _omitFieldNames ? '' : 'EC', protoName: 'EC', subBuilder: ErrCode.create)
    ..pc<$1.Tool>(2, _omitFieldNames ? '' : 'tools', $pb.PbFieldType.PM, subBuilder: $1.Tool.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetToolListResponse clone() => GetToolListResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetToolListResponse copyWith(void Function(GetToolListResponse) updates) => super.copyWith((message) => updates(message as GetToolListResponse)) as GetToolListResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetToolListResponse create() => GetToolListResponse._();
  GetToolListResponse createEmptyInstance() => create();
  static $pb.PbList<GetToolListResponse> createRepeated() => $pb.PbList<GetToolListResponse>();
  @$core.pragma('dart2js:noInline')
  static GetToolListResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetToolListResponse>(create);
  static GetToolListResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ErrCode get eC => $_getN(0);
  @$pb.TagNumber(1)
  set eC(ErrCode v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasEC() => $_has(0);
  @$pb.TagNumber(1)
  void clearEC() => clearField(1);
  @$pb.TagNumber(1)
  ErrCode ensureEC() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<$1.Tool> get tools => $_getList(1);
}

class DelToolsRequest extends $pb.GeneratedMessage {
  factory DelToolsRequest({
    $core.Iterable<$core.String>? ids,
  }) {
    final $result = create();
    if (ids != null) {
      $result.ids.addAll(ids);
    }
    return $result;
  }
  DelToolsRequest._() : super();
  factory DelToolsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DelToolsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DelToolsRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'grpc'), createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'Ids', protoName: 'Ids')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DelToolsRequest clone() => DelToolsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DelToolsRequest copyWith(void Function(DelToolsRequest) updates) => super.copyWith((message) => updates(message as DelToolsRequest)) as DelToolsRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DelToolsRequest create() => DelToolsRequest._();
  DelToolsRequest createEmptyInstance() => create();
  static $pb.PbList<DelToolsRequest> createRepeated() => $pb.PbList<DelToolsRequest>();
  @$core.pragma('dart2js:noInline')
  static DelToolsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DelToolsRequest>(create);
  static DelToolsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get ids => $_getList(0);
}

class DelToolsResponse extends $pb.GeneratedMessage {
  factory DelToolsResponse({
    ErrCode? eC,
  }) {
    final $result = create();
    if (eC != null) {
      $result.eC = eC;
    }
    return $result;
  }
  DelToolsResponse._() : super();
  factory DelToolsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DelToolsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DelToolsResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'grpc'), createEmptyInstance: create)
    ..aOM<ErrCode>(1, _omitFieldNames ? '' : 'EC', protoName: 'EC', subBuilder: ErrCode.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DelToolsResponse clone() => DelToolsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DelToolsResponse copyWith(void Function(DelToolsResponse) updates) => super.copyWith((message) => updates(message as DelToolsResponse)) as DelToolsResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DelToolsResponse create() => DelToolsResponse._();
  DelToolsResponse createEmptyInstance() => create();
  static $pb.PbList<DelToolsResponse> createRepeated() => $pb.PbList<DelToolsResponse>();
  @$core.pragma('dart2js:noInline')
  static DelToolsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DelToolsResponse>(create);
  static DelToolsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ErrCode get eC => $_getN(0);
  @$pb.TagNumber(1)
  set eC(ErrCode v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasEC() => $_has(0);
  @$pb.TagNumber(1)
  void clearEC() => clearField(1);
  @$pb.TagNumber(1)
  ErrCode ensureEC() => $_ensure(0);
}

class CallToolRequest extends $pb.GeneratedMessage {
  factory CallToolRequest({
    $core.String? id,
    $core.bool? stream,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (stream != null) {
      $result.stream = stream;
    }
    return $result;
  }
  CallToolRequest._() : super();
  factory CallToolRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CallToolRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CallToolRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'grpc'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'Id', protoName: 'Id')
    ..aOB(2, _omitFieldNames ? '' : 'stream')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CallToolRequest clone() => CallToolRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CallToolRequest copyWith(void Function(CallToolRequest) updates) => super.copyWith((message) => updates(message as CallToolRequest)) as CallToolRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CallToolRequest create() => CallToolRequest._();
  CallToolRequest createEmptyInstance() => create();
  static $pb.PbList<CallToolRequest> createRepeated() => $pb.PbList<CallToolRequest>();
  @$core.pragma('dart2js:noInline')
  static CallToolRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CallToolRequest>(create);
  static CallToolRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get stream => $_getBF(1);
  @$pb.TagNumber(2)
  set stream($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStream() => $_has(1);
  @$pb.TagNumber(2)
  void clearStream() => clearField(2);
}

class CallToolResponse extends $pb.GeneratedMessage {
  factory CallToolResponse({
    ErrCode? eC,
    $2.Any? data,
  }) {
    final $result = create();
    if (eC != null) {
      $result.eC = eC;
    }
    if (data != null) {
      $result.data = data;
    }
    return $result;
  }
  CallToolResponse._() : super();
  factory CallToolResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CallToolResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CallToolResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'grpc'), createEmptyInstance: create)
    ..aOM<ErrCode>(1, _omitFieldNames ? '' : 'EC', protoName: 'EC', subBuilder: ErrCode.create)
    ..aOM<$2.Any>(2, _omitFieldNames ? '' : 'data', subBuilder: $2.Any.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CallToolResponse clone() => CallToolResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CallToolResponse copyWith(void Function(CallToolResponse) updates) => super.copyWith((message) => updates(message as CallToolResponse)) as CallToolResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CallToolResponse create() => CallToolResponse._();
  CallToolResponse createEmptyInstance() => create();
  static $pb.PbList<CallToolResponse> createRepeated() => $pb.PbList<CallToolResponse>();
  @$core.pragma('dart2js:noInline')
  static CallToolResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CallToolResponse>(create);
  static CallToolResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ErrCode get eC => $_getN(0);
  @$pb.TagNumber(1)
  set eC(ErrCode v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasEC() => $_has(0);
  @$pb.TagNumber(1)
  void clearEC() => clearField(1);
  @$pb.TagNumber(1)
  ErrCode ensureEC() => $_ensure(0);

  /// object
  @$pb.TagNumber(2)
  $2.Any get data => $_getN(1);
  @$pb.TagNumber(2)
  set data($2.Any v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasData() => $_has(1);
  @$pb.TagNumber(2)
  void clearData() => clearField(2);
  @$pb.TagNumber(2)
  $2.Any ensureData() => $_ensure(1);
}

/// dialog --------------------------------------------------------------------------
class GetDialogListRequest extends $pb.GeneratedMessage {
  factory GetDialogListRequest({
    $core.String? uId,
    $core.String? oId,
    $core.int? page,
    $core.int? pageSize,
  }) {
    final $result = create();
    if (uId != null) {
      $result.uId = uId;
    }
    if (oId != null) {
      $result.oId = oId;
    }
    if (page != null) {
      $result.page = page;
    }
    if (pageSize != null) {
      $result.pageSize = pageSize;
    }
    return $result;
  }
  GetDialogListRequest._() : super();
  factory GetDialogListRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetDialogListRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetDialogListRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'grpc'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'UId', protoName: 'UId')
    ..aOS(2, _omitFieldNames ? '' : 'OId', protoName: 'OId')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'Page', $pb.PbFieldType.O3, protoName: 'Page')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'PageSize', $pb.PbFieldType.O3, protoName: 'PageSize')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetDialogListRequest clone() => GetDialogListRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetDialogListRequest copyWith(void Function(GetDialogListRequest) updates) => super.copyWith((message) => updates(message as GetDialogListRequest)) as GetDialogListRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetDialogListRequest create() => GetDialogListRequest._();
  GetDialogListRequest createEmptyInstance() => create();
  static $pb.PbList<GetDialogListRequest> createRepeated() => $pb.PbList<GetDialogListRequest>();
  @$core.pragma('dart2js:noInline')
  static GetDialogListRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetDialogListRequest>(create);
  static GetDialogListRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get uId => $_getSZ(0);
  @$pb.TagNumber(1)
  set uId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get oId => $_getSZ(1);
  @$pb.TagNumber(2)
  set oId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOId() => $_has(1);
  @$pb.TagNumber(2)
  void clearOId() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get page => $_getIZ(2);
  @$pb.TagNumber(3)
  set page($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPage() => $_has(2);
  @$pb.TagNumber(3)
  void clearPage() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get pageSize => $_getIZ(3);
  @$pb.TagNumber(4)
  set pageSize($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPageSize() => $_has(3);
  @$pb.TagNumber(4)
  void clearPageSize() => clearField(4);
}

class GetDialogListResponse extends $pb.GeneratedMessage {
  factory GetDialogListResponse({
    ErrCode? eC,
    $core.Iterable<$3.Dialog>? dialogs,
  }) {
    final $result = create();
    if (eC != null) {
      $result.eC = eC;
    }
    if (dialogs != null) {
      $result.dialogs.addAll(dialogs);
    }
    return $result;
  }
  GetDialogListResponse._() : super();
  factory GetDialogListResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetDialogListResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetDialogListResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'grpc'), createEmptyInstance: create)
    ..aOM<ErrCode>(1, _omitFieldNames ? '' : 'EC', protoName: 'EC', subBuilder: ErrCode.create)
    ..pc<$3.Dialog>(2, _omitFieldNames ? '' : 'Dialogs', $pb.PbFieldType.PM, protoName: 'Dialogs', subBuilder: $3.Dialog.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetDialogListResponse clone() => GetDialogListResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetDialogListResponse copyWith(void Function(GetDialogListResponse) updates) => super.copyWith((message) => updates(message as GetDialogListResponse)) as GetDialogListResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetDialogListResponse create() => GetDialogListResponse._();
  GetDialogListResponse createEmptyInstance() => create();
  static $pb.PbList<GetDialogListResponse> createRepeated() => $pb.PbList<GetDialogListResponse>();
  @$core.pragma('dart2js:noInline')
  static GetDialogListResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetDialogListResponse>(create);
  static GetDialogListResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ErrCode get eC => $_getN(0);
  @$pb.TagNumber(1)
  set eC(ErrCode v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasEC() => $_has(0);
  @$pb.TagNumber(1)
  void clearEC() => clearField(1);
  @$pb.TagNumber(1)
  ErrCode ensureEC() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<$3.Dialog> get dialogs => $_getList(1);
}

class GetDialogDetailRequest extends $pb.GeneratedMessage {
  factory GetDialogDetailRequest({
    $core.String? uId,
    $core.String? oId,
    $core.String? sId,
  }) {
    final $result = create();
    if (uId != null) {
      $result.uId = uId;
    }
    if (oId != null) {
      $result.oId = oId;
    }
    if (sId != null) {
      $result.sId = sId;
    }
    return $result;
  }
  GetDialogDetailRequest._() : super();
  factory GetDialogDetailRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetDialogDetailRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetDialogDetailRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'grpc'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'UId', protoName: 'UId')
    ..aOS(2, _omitFieldNames ? '' : 'OId', protoName: 'OId')
    ..aOS(3, _omitFieldNames ? '' : 'SId', protoName: 'SId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetDialogDetailRequest clone() => GetDialogDetailRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetDialogDetailRequest copyWith(void Function(GetDialogDetailRequest) updates) => super.copyWith((message) => updates(message as GetDialogDetailRequest)) as GetDialogDetailRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetDialogDetailRequest create() => GetDialogDetailRequest._();
  GetDialogDetailRequest createEmptyInstance() => create();
  static $pb.PbList<GetDialogDetailRequest> createRepeated() => $pb.PbList<GetDialogDetailRequest>();
  @$core.pragma('dart2js:noInline')
  static GetDialogDetailRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetDialogDetailRequest>(create);
  static GetDialogDetailRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get uId => $_getSZ(0);
  @$pb.TagNumber(1)
  set uId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get oId => $_getSZ(1);
  @$pb.TagNumber(2)
  set oId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOId() => $_has(1);
  @$pb.TagNumber(2)
  void clearOId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get sId => $_getSZ(2);
  @$pb.TagNumber(3)
  set sId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSId() => $_has(2);
  @$pb.TagNumber(3)
  void clearSId() => clearField(3);
}

class GetDialogDetailResponse extends $pb.GeneratedMessage {
  factory GetDialogDetailResponse({
    ErrCode? eC,
    $3.Dialog? dialog,
  }) {
    final $result = create();
    if (eC != null) {
      $result.eC = eC;
    }
    if (dialog != null) {
      $result.dialog = dialog;
    }
    return $result;
  }
  GetDialogDetailResponse._() : super();
  factory GetDialogDetailResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetDialogDetailResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetDialogDetailResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'grpc'), createEmptyInstance: create)
    ..aOM<ErrCode>(1, _omitFieldNames ? '' : 'EC', protoName: 'EC', subBuilder: ErrCode.create)
    ..aOM<$3.Dialog>(2, _omitFieldNames ? '' : 'Dialog', protoName: 'Dialog', subBuilder: $3.Dialog.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetDialogDetailResponse clone() => GetDialogDetailResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetDialogDetailResponse copyWith(void Function(GetDialogDetailResponse) updates) => super.copyWith((message) => updates(message as GetDialogDetailResponse)) as GetDialogDetailResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetDialogDetailResponse create() => GetDialogDetailResponse._();
  GetDialogDetailResponse createEmptyInstance() => create();
  static $pb.PbList<GetDialogDetailResponse> createRepeated() => $pb.PbList<GetDialogDetailResponse>();
  @$core.pragma('dart2js:noInline')
  static GetDialogDetailResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetDialogDetailResponse>(create);
  static GetDialogDetailResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ErrCode get eC => $_getN(0);
  @$pb.TagNumber(1)
  set eC(ErrCode v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasEC() => $_has(0);
  @$pb.TagNumber(1)
  void clearEC() => clearField(1);
  @$pb.TagNumber(1)
  ErrCode ensureEC() => $_ensure(0);

  @$pb.TagNumber(2)
  $3.Dialog get dialog => $_getN(1);
  @$pb.TagNumber(2)
  set dialog($3.Dialog v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasDialog() => $_has(1);
  @$pb.TagNumber(2)
  void clearDialog() => clearField(2);
  @$pb.TagNumber(2)
  $3.Dialog ensureDialog() => $_ensure(1);
}

class AddDialogRequest extends $pb.GeneratedMessage {
  factory AddDialogRequest({
    $core.String? uId,
    $core.String? oId,
    $core.String? id,
    $core.String? title,
  }) {
    final $result = create();
    if (uId != null) {
      $result.uId = uId;
    }
    if (oId != null) {
      $result.oId = oId;
    }
    if (id != null) {
      $result.id = id;
    }
    if (title != null) {
      $result.title = title;
    }
    return $result;
  }
  AddDialogRequest._() : super();
  factory AddDialogRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddDialogRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AddDialogRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'grpc'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'UId', protoName: 'UId')
    ..aOS(2, _omitFieldNames ? '' : 'OId', protoName: 'OId')
    ..aOS(4, _omitFieldNames ? '' : 'Id', protoName: 'Id')
    ..aOS(5, _omitFieldNames ? '' : 'Title', protoName: 'Title')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddDialogRequest clone() => AddDialogRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddDialogRequest copyWith(void Function(AddDialogRequest) updates) => super.copyWith((message) => updates(message as AddDialogRequest)) as AddDialogRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddDialogRequest create() => AddDialogRequest._();
  AddDialogRequest createEmptyInstance() => create();
  static $pb.PbList<AddDialogRequest> createRepeated() => $pb.PbList<AddDialogRequest>();
  @$core.pragma('dart2js:noInline')
  static AddDialogRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddDialogRequest>(create);
  static AddDialogRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get uId => $_getSZ(0);
  @$pb.TagNumber(1)
  set uId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get oId => $_getSZ(1);
  @$pb.TagNumber(2)
  set oId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOId() => $_has(1);
  @$pb.TagNumber(2)
  void clearOId() => clearField(2);

  @$pb.TagNumber(4)
  $core.String get id => $_getSZ(2);
  @$pb.TagNumber(4)
  set id($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasId() => $_has(2);
  @$pb.TagNumber(4)
  void clearId() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get title => $_getSZ(3);
  @$pb.TagNumber(5)
  set title($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(5)
  $core.bool hasTitle() => $_has(3);
  @$pb.TagNumber(5)
  void clearTitle() => clearField(5);
}

class AddDialogResponse extends $pb.GeneratedMessage {
  factory AddDialogResponse({
    ErrCode? eC,
    $3.Dialog? dialog,
  }) {
    final $result = create();
    if (eC != null) {
      $result.eC = eC;
    }
    if (dialog != null) {
      $result.dialog = dialog;
    }
    return $result;
  }
  AddDialogResponse._() : super();
  factory AddDialogResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddDialogResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AddDialogResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'grpc'), createEmptyInstance: create)
    ..aOM<ErrCode>(1, _omitFieldNames ? '' : 'EC', protoName: 'EC', subBuilder: ErrCode.create)
    ..aOM<$3.Dialog>(2, _omitFieldNames ? '' : 'Dialog', protoName: 'Dialog', subBuilder: $3.Dialog.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddDialogResponse clone() => AddDialogResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddDialogResponse copyWith(void Function(AddDialogResponse) updates) => super.copyWith((message) => updates(message as AddDialogResponse)) as AddDialogResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddDialogResponse create() => AddDialogResponse._();
  AddDialogResponse createEmptyInstance() => create();
  static $pb.PbList<AddDialogResponse> createRepeated() => $pb.PbList<AddDialogResponse>();
  @$core.pragma('dart2js:noInline')
  static AddDialogResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddDialogResponse>(create);
  static AddDialogResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ErrCode get eC => $_getN(0);
  @$pb.TagNumber(1)
  set eC(ErrCode v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasEC() => $_has(0);
  @$pb.TagNumber(1)
  void clearEC() => clearField(1);
  @$pb.TagNumber(1)
  ErrCode ensureEC() => $_ensure(0);

  @$pb.TagNumber(2)
  $3.Dialog get dialog => $_getN(1);
  @$pb.TagNumber(2)
  set dialog($3.Dialog v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasDialog() => $_has(1);
  @$pb.TagNumber(2)
  void clearDialog() => clearField(2);
  @$pb.TagNumber(2)
  $3.Dialog ensureDialog() => $_ensure(1);
}

class DelDialogRequest extends $pb.GeneratedMessage {
  factory DelDialogRequest({
    $core.String? uId,
    $core.String? oId,
    $core.String? sId,
  }) {
    final $result = create();
    if (uId != null) {
      $result.uId = uId;
    }
    if (oId != null) {
      $result.oId = oId;
    }
    if (sId != null) {
      $result.sId = sId;
    }
    return $result;
  }
  DelDialogRequest._() : super();
  factory DelDialogRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DelDialogRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DelDialogRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'grpc'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'UId', protoName: 'UId')
    ..aOS(2, _omitFieldNames ? '' : 'OId', protoName: 'OId')
    ..aOS(3, _omitFieldNames ? '' : 'SId', protoName: 'SId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DelDialogRequest clone() => DelDialogRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DelDialogRequest copyWith(void Function(DelDialogRequest) updates) => super.copyWith((message) => updates(message as DelDialogRequest)) as DelDialogRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DelDialogRequest create() => DelDialogRequest._();
  DelDialogRequest createEmptyInstance() => create();
  static $pb.PbList<DelDialogRequest> createRepeated() => $pb.PbList<DelDialogRequest>();
  @$core.pragma('dart2js:noInline')
  static DelDialogRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DelDialogRequest>(create);
  static DelDialogRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get uId => $_getSZ(0);
  @$pb.TagNumber(1)
  set uId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get oId => $_getSZ(1);
  @$pb.TagNumber(2)
  set oId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOId() => $_has(1);
  @$pb.TagNumber(2)
  void clearOId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get sId => $_getSZ(2);
  @$pb.TagNumber(3)
  set sId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSId() => $_has(2);
  @$pb.TagNumber(3)
  void clearSId() => clearField(3);
}

class DelDialogResponse extends $pb.GeneratedMessage {
  factory DelDialogResponse({
    ErrCode? eC,
  }) {
    final $result = create();
    if (eC != null) {
      $result.eC = eC;
    }
    return $result;
  }
  DelDialogResponse._() : super();
  factory DelDialogResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DelDialogResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DelDialogResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'grpc'), createEmptyInstance: create)
    ..aOM<ErrCode>(1, _omitFieldNames ? '' : 'EC', protoName: 'EC', subBuilder: ErrCode.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DelDialogResponse clone() => DelDialogResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DelDialogResponse copyWith(void Function(DelDialogResponse) updates) => super.copyWith((message) => updates(message as DelDialogResponse)) as DelDialogResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DelDialogResponse create() => DelDialogResponse._();
  DelDialogResponse createEmptyInstance() => create();
  static $pb.PbList<DelDialogResponse> createRepeated() => $pb.PbList<DelDialogResponse>();
  @$core.pragma('dart2js:noInline')
  static DelDialogResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DelDialogResponse>(create);
  static DelDialogResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ErrCode get eC => $_getN(0);
  @$pb.TagNumber(1)
  set eC(ErrCode v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasEC() => $_has(0);
  @$pb.TagNumber(1)
  void clearEC() => clearField(1);
  @$pb.TagNumber(1)
  ErrCode ensureEC() => $_ensure(0);
}

class GetDialogMsgListRequest extends $pb.GeneratedMessage {
  factory GetDialogMsgListRequest({
    $core.String? uId,
    $core.String? oId,
    $core.String? sId,
    $core.int? page,
    $core.int? pageSize,
  }) {
    final $result = create();
    if (uId != null) {
      $result.uId = uId;
    }
    if (oId != null) {
      $result.oId = oId;
    }
    if (sId != null) {
      $result.sId = sId;
    }
    if (page != null) {
      $result.page = page;
    }
    if (pageSize != null) {
      $result.pageSize = pageSize;
    }
    return $result;
  }
  GetDialogMsgListRequest._() : super();
  factory GetDialogMsgListRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetDialogMsgListRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetDialogMsgListRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'grpc'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'UId', protoName: 'UId')
    ..aOS(2, _omitFieldNames ? '' : 'OId', protoName: 'OId')
    ..aOS(3, _omitFieldNames ? '' : 'SId', protoName: 'SId')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'Page', $pb.PbFieldType.O3, protoName: 'Page')
    ..a<$core.int>(5, _omitFieldNames ? '' : 'PageSize', $pb.PbFieldType.O3, protoName: 'PageSize')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetDialogMsgListRequest clone() => GetDialogMsgListRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetDialogMsgListRequest copyWith(void Function(GetDialogMsgListRequest) updates) => super.copyWith((message) => updates(message as GetDialogMsgListRequest)) as GetDialogMsgListRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetDialogMsgListRequest create() => GetDialogMsgListRequest._();
  GetDialogMsgListRequest createEmptyInstance() => create();
  static $pb.PbList<GetDialogMsgListRequest> createRepeated() => $pb.PbList<GetDialogMsgListRequest>();
  @$core.pragma('dart2js:noInline')
  static GetDialogMsgListRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetDialogMsgListRequest>(create);
  static GetDialogMsgListRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get uId => $_getSZ(0);
  @$pb.TagNumber(1)
  set uId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get oId => $_getSZ(1);
  @$pb.TagNumber(2)
  set oId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOId() => $_has(1);
  @$pb.TagNumber(2)
  void clearOId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get sId => $_getSZ(2);
  @$pb.TagNumber(3)
  set sId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSId() => $_has(2);
  @$pb.TagNumber(3)
  void clearSId() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get page => $_getIZ(3);
  @$pb.TagNumber(4)
  set page($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPage() => $_has(3);
  @$pb.TagNumber(4)
  void clearPage() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get pageSize => $_getIZ(4);
  @$pb.TagNumber(5)
  set pageSize($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPageSize() => $_has(4);
  @$pb.TagNumber(5)
  void clearPageSize() => clearField(5);
}

class GetDialogMsgListResponse extends $pb.GeneratedMessage {
  factory GetDialogMsgListResponse({
    ErrCode? eC,
    $core.Iterable<$4.Message>? msgs,
  }) {
    final $result = create();
    if (eC != null) {
      $result.eC = eC;
    }
    if (msgs != null) {
      $result.msgs.addAll(msgs);
    }
    return $result;
  }
  GetDialogMsgListResponse._() : super();
  factory GetDialogMsgListResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetDialogMsgListResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetDialogMsgListResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'grpc'), createEmptyInstance: create)
    ..aOM<ErrCode>(1, _omitFieldNames ? '' : 'EC', protoName: 'EC', subBuilder: ErrCode.create)
    ..pc<$4.Message>(2, _omitFieldNames ? '' : 'Msgs', $pb.PbFieldType.PM, protoName: 'Msgs', subBuilder: $4.Message.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetDialogMsgListResponse clone() => GetDialogMsgListResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetDialogMsgListResponse copyWith(void Function(GetDialogMsgListResponse) updates) => super.copyWith((message) => updates(message as GetDialogMsgListResponse)) as GetDialogMsgListResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetDialogMsgListResponse create() => GetDialogMsgListResponse._();
  GetDialogMsgListResponse createEmptyInstance() => create();
  static $pb.PbList<GetDialogMsgListResponse> createRepeated() => $pb.PbList<GetDialogMsgListResponse>();
  @$core.pragma('dart2js:noInline')
  static GetDialogMsgListResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetDialogMsgListResponse>(create);
  static GetDialogMsgListResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ErrCode get eC => $_getN(0);
  @$pb.TagNumber(1)
  set eC(ErrCode v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasEC() => $_has(0);
  @$pb.TagNumber(1)
  void clearEC() => clearField(1);
  @$pb.TagNumber(1)
  ErrCode ensureEC() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<$4.Message> get msgs => $_getList(1);
}

class AddDialogMsgRequest extends $pb.GeneratedMessage {
  factory AddDialogMsgRequest({
    $core.String? uId,
    $core.String? oId,
    $core.String? sId,
    $4.Message? msg,
  }) {
    final $result = create();
    if (uId != null) {
      $result.uId = uId;
    }
    if (oId != null) {
      $result.oId = oId;
    }
    if (sId != null) {
      $result.sId = sId;
    }
    if (msg != null) {
      $result.msg = msg;
    }
    return $result;
  }
  AddDialogMsgRequest._() : super();
  factory AddDialogMsgRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddDialogMsgRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AddDialogMsgRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'grpc'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'UId', protoName: 'UId')
    ..aOS(2, _omitFieldNames ? '' : 'OId', protoName: 'OId')
    ..aOS(3, _omitFieldNames ? '' : 'SId', protoName: 'SId')
    ..aOM<$4.Message>(4, _omitFieldNames ? '' : 'Msg', protoName: 'Msg', subBuilder: $4.Message.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddDialogMsgRequest clone() => AddDialogMsgRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddDialogMsgRequest copyWith(void Function(AddDialogMsgRequest) updates) => super.copyWith((message) => updates(message as AddDialogMsgRequest)) as AddDialogMsgRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddDialogMsgRequest create() => AddDialogMsgRequest._();
  AddDialogMsgRequest createEmptyInstance() => create();
  static $pb.PbList<AddDialogMsgRequest> createRepeated() => $pb.PbList<AddDialogMsgRequest>();
  @$core.pragma('dart2js:noInline')
  static AddDialogMsgRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddDialogMsgRequest>(create);
  static AddDialogMsgRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get uId => $_getSZ(0);
  @$pb.TagNumber(1)
  set uId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get oId => $_getSZ(1);
  @$pb.TagNumber(2)
  set oId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOId() => $_has(1);
  @$pb.TagNumber(2)
  void clearOId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get sId => $_getSZ(2);
  @$pb.TagNumber(3)
  set sId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSId() => $_has(2);
  @$pb.TagNumber(3)
  void clearSId() => clearField(3);

  @$pb.TagNumber(4)
  $4.Message get msg => $_getN(3);
  @$pb.TagNumber(4)
  set msg($4.Message v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasMsg() => $_has(3);
  @$pb.TagNumber(4)
  void clearMsg() => clearField(4);
  @$pb.TagNumber(4)
  $4.Message ensureMsg() => $_ensure(3);
}

class AddDialogMsgResponse extends $pb.GeneratedMessage {
  factory AddDialogMsgResponse({
    ErrCode? eC,
    $4.Message? msg,
  }) {
    final $result = create();
    if (eC != null) {
      $result.eC = eC;
    }
    if (msg != null) {
      $result.msg = msg;
    }
    return $result;
  }
  AddDialogMsgResponse._() : super();
  factory AddDialogMsgResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddDialogMsgResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AddDialogMsgResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'grpc'), createEmptyInstance: create)
    ..aOM<ErrCode>(1, _omitFieldNames ? '' : 'EC', protoName: 'EC', subBuilder: ErrCode.create)
    ..aOM<$4.Message>(2, _omitFieldNames ? '' : 'Msg', protoName: 'Msg', subBuilder: $4.Message.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddDialogMsgResponse clone() => AddDialogMsgResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddDialogMsgResponse copyWith(void Function(AddDialogMsgResponse) updates) => super.copyWith((message) => updates(message as AddDialogMsgResponse)) as AddDialogMsgResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddDialogMsgResponse create() => AddDialogMsgResponse._();
  AddDialogMsgResponse createEmptyInstance() => create();
  static $pb.PbList<AddDialogMsgResponse> createRepeated() => $pb.PbList<AddDialogMsgResponse>();
  @$core.pragma('dart2js:noInline')
  static AddDialogMsgResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddDialogMsgResponse>(create);
  static AddDialogMsgResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ErrCode get eC => $_getN(0);
  @$pb.TagNumber(1)
  set eC(ErrCode v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasEC() => $_has(0);
  @$pb.TagNumber(1)
  void clearEC() => clearField(1);
  @$pb.TagNumber(1)
  ErrCode ensureEC() => $_ensure(0);

  @$pb.TagNumber(2)
  $4.Message get msg => $_getN(1);
  @$pb.TagNumber(2)
  set msg($4.Message v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasMsg() => $_has(1);
  @$pb.TagNumber(2)
  void clearMsg() => clearField(2);
  @$pb.TagNumber(2)
  $4.Message ensureMsg() => $_ensure(1);
}

/// profile -----------------------------------------------------------------------------------
class GetProfileRequest extends $pb.GeneratedMessage {
  factory GetProfileRequest() => create();
  GetProfileRequest._() : super();
  factory GetProfileRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetProfileRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetProfileRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'grpc'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetProfileRequest clone() => GetProfileRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetProfileRequest copyWith(void Function(GetProfileRequest) updates) => super.copyWith((message) => updates(message as GetProfileRequest)) as GetProfileRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetProfileRequest create() => GetProfileRequest._();
  GetProfileRequest createEmptyInstance() => create();
  static $pb.PbList<GetProfileRequest> createRepeated() => $pb.PbList<GetProfileRequest>();
  @$core.pragma('dart2js:noInline')
  static GetProfileRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetProfileRequest>(create);
  static GetProfileRequest? _defaultInstance;
}

class GetProfileResponse extends $pb.GeneratedMessage {
  factory GetProfileResponse({
    ErrCode? eC,
    $5.Uprofile? profile,
  }) {
    final $result = create();
    if (eC != null) {
      $result.eC = eC;
    }
    if (profile != null) {
      $result.profile = profile;
    }
    return $result;
  }
  GetProfileResponse._() : super();
  factory GetProfileResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetProfileResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetProfileResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'grpc'), createEmptyInstance: create)
    ..aOM<ErrCode>(1, _omitFieldNames ? '' : 'EC', protoName: 'EC', subBuilder: ErrCode.create)
    ..aOM<$5.Uprofile>(2, _omitFieldNames ? '' : 'Profile', protoName: 'Profile', subBuilder: $5.Uprofile.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetProfileResponse clone() => GetProfileResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetProfileResponse copyWith(void Function(GetProfileResponse) updates) => super.copyWith((message) => updates(message as GetProfileResponse)) as GetProfileResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetProfileResponse create() => GetProfileResponse._();
  GetProfileResponse createEmptyInstance() => create();
  static $pb.PbList<GetProfileResponse> createRepeated() => $pb.PbList<GetProfileResponse>();
  @$core.pragma('dart2js:noInline')
  static GetProfileResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetProfileResponse>(create);
  static GetProfileResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ErrCode get eC => $_getN(0);
  @$pb.TagNumber(1)
  set eC(ErrCode v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasEC() => $_has(0);
  @$pb.TagNumber(1)
  void clearEC() => clearField(1);
  @$pb.TagNumber(1)
  ErrCode ensureEC() => $_ensure(0);

  @$pb.TagNumber(2)
  $5.Uprofile get profile => $_getN(1);
  @$pb.TagNumber(2)
  set profile($5.Uprofile v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasProfile() => $_has(1);
  @$pb.TagNumber(2)
  void clearProfile() => clearField(2);
  @$pb.TagNumber(2)
  $5.Uprofile ensureProfile() => $_ensure(1);
}

class UpdateProfileRequest extends $pb.GeneratedMessage {
  factory UpdateProfileRequest({
    $5.Uprofile? profile,
  }) {
    final $result = create();
    if (profile != null) {
      $result.profile = profile;
    }
    return $result;
  }
  UpdateProfileRequest._() : super();
  factory UpdateProfileRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateProfileRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateProfileRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'grpc'), createEmptyInstance: create)
    ..aOM<$5.Uprofile>(1, _omitFieldNames ? '' : 'Profile', protoName: 'Profile', subBuilder: $5.Uprofile.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateProfileRequest clone() => UpdateProfileRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateProfileRequest copyWith(void Function(UpdateProfileRequest) updates) => super.copyWith((message) => updates(message as UpdateProfileRequest)) as UpdateProfileRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateProfileRequest create() => UpdateProfileRequest._();
  UpdateProfileRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateProfileRequest> createRepeated() => $pb.PbList<UpdateProfileRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateProfileRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateProfileRequest>(create);
  static UpdateProfileRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $5.Uprofile get profile => $_getN(0);
  @$pb.TagNumber(1)
  set profile($5.Uprofile v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasProfile() => $_has(0);
  @$pb.TagNumber(1)
  void clearProfile() => clearField(1);
  @$pb.TagNumber(1)
  $5.Uprofile ensureProfile() => $_ensure(0);
}

class UpdateProfileResponse extends $pb.GeneratedMessage {
  factory UpdateProfileResponse({
    ErrCode? eC,
  }) {
    final $result = create();
    if (eC != null) {
      $result.eC = eC;
    }
    return $result;
  }
  UpdateProfileResponse._() : super();
  factory UpdateProfileResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateProfileResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateProfileResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'grpc'), createEmptyInstance: create)
    ..aOM<ErrCode>(1, _omitFieldNames ? '' : 'EC', protoName: 'EC', subBuilder: ErrCode.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateProfileResponse clone() => UpdateProfileResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateProfileResponse copyWith(void Function(UpdateProfileResponse) updates) => super.copyWith((message) => updates(message as UpdateProfileResponse)) as UpdateProfileResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateProfileResponse create() => UpdateProfileResponse._();
  UpdateProfileResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateProfileResponse> createRepeated() => $pb.PbList<UpdateProfileResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateProfileResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateProfileResponse>(create);
  static UpdateProfileResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ErrCode get eC => $_getN(0);
  @$pb.TagNumber(1)
  set eC(ErrCode v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasEC() => $_has(0);
  @$pb.TagNumber(1)
  void clearEC() => clearField(1);
  @$pb.TagNumber(1)
  ErrCode ensureEC() => $_ensure(0);
}

/// account --------------------------------------------------------------------------------
class GetAccountRequest extends $pb.GeneratedMessage {
  factory GetAccountRequest() => create();
  GetAccountRequest._() : super();
  factory GetAccountRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAccountRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetAccountRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'grpc'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAccountRequest clone() => GetAccountRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAccountRequest copyWith(void Function(GetAccountRequest) updates) => super.copyWith((message) => updates(message as GetAccountRequest)) as GetAccountRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetAccountRequest create() => GetAccountRequest._();
  GetAccountRequest createEmptyInstance() => create();
  static $pb.PbList<GetAccountRequest> createRepeated() => $pb.PbList<GetAccountRequest>();
  @$core.pragma('dart2js:noInline')
  static GetAccountRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAccountRequest>(create);
  static GetAccountRequest? _defaultInstance;
}

class GetAccountResponse extends $pb.GeneratedMessage {
  factory GetAccountResponse({
    ErrCode? eC,
    $6.Account? account,
  }) {
    final $result = create();
    if (eC != null) {
      $result.eC = eC;
    }
    if (account != null) {
      $result.account = account;
    }
    return $result;
  }
  GetAccountResponse._() : super();
  factory GetAccountResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAccountResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetAccountResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'grpc'), createEmptyInstance: create)
    ..aOM<ErrCode>(1, _omitFieldNames ? '' : 'EC', protoName: 'EC', subBuilder: ErrCode.create)
    ..aOM<$6.Account>(2, _omitFieldNames ? '' : 'Account', protoName: 'Account', subBuilder: $6.Account.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAccountResponse clone() => GetAccountResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAccountResponse copyWith(void Function(GetAccountResponse) updates) => super.copyWith((message) => updates(message as GetAccountResponse)) as GetAccountResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetAccountResponse create() => GetAccountResponse._();
  GetAccountResponse createEmptyInstance() => create();
  static $pb.PbList<GetAccountResponse> createRepeated() => $pb.PbList<GetAccountResponse>();
  @$core.pragma('dart2js:noInline')
  static GetAccountResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAccountResponse>(create);
  static GetAccountResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ErrCode get eC => $_getN(0);
  @$pb.TagNumber(1)
  set eC(ErrCode v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasEC() => $_has(0);
  @$pb.TagNumber(1)
  void clearEC() => clearField(1);
  @$pb.TagNumber(1)
  ErrCode ensureEC() => $_ensure(0);

  @$pb.TagNumber(2)
  $6.Account get account => $_getN(1);
  @$pb.TagNumber(2)
  set account($6.Account v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasAccount() => $_has(1);
  @$pb.TagNumber(2)
  void clearAccount() => clearField(2);
  @$pb.TagNumber(2)
  $6.Account ensureAccount() => $_ensure(1);
}

/// store --------------------------------------------------------------------------------
class PreSignedUrlRequest extends $pb.GeneratedMessage {
  factory PreSignedUrlRequest({
    $core.String? objName,
  }) {
    final $result = create();
    if (objName != null) {
      $result.objName = objName;
    }
    return $result;
  }
  PreSignedUrlRequest._() : super();
  factory PreSignedUrlRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PreSignedUrlRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PreSignedUrlRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'grpc'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'objName', protoName: 'objName')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PreSignedUrlRequest clone() => PreSignedUrlRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PreSignedUrlRequest copyWith(void Function(PreSignedUrlRequest) updates) => super.copyWith((message) => updates(message as PreSignedUrlRequest)) as PreSignedUrlRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PreSignedUrlRequest create() => PreSignedUrlRequest._();
  PreSignedUrlRequest createEmptyInstance() => create();
  static $pb.PbList<PreSignedUrlRequest> createRepeated() => $pb.PbList<PreSignedUrlRequest>();
  @$core.pragma('dart2js:noInline')
  static PreSignedUrlRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PreSignedUrlRequest>(create);
  static PreSignedUrlRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get objName => $_getSZ(0);
  @$pb.TagNumber(1)
  set objName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasObjName() => $_has(0);
  @$pb.TagNumber(1)
  void clearObjName() => clearField(1);
}

class PreSignedUrlResponse extends $pb.GeneratedMessage {
  factory PreSignedUrlResponse({
    ErrCode? eC,
    $core.String? putUrl,
    $core.String? url,
  }) {
    final $result = create();
    if (eC != null) {
      $result.eC = eC;
    }
    if (putUrl != null) {
      $result.putUrl = putUrl;
    }
    if (url != null) {
      $result.url = url;
    }
    return $result;
  }
  PreSignedUrlResponse._() : super();
  factory PreSignedUrlResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PreSignedUrlResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PreSignedUrlResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'grpc'), createEmptyInstance: create)
    ..aOM<ErrCode>(1, _omitFieldNames ? '' : 'EC', protoName: 'EC', subBuilder: ErrCode.create)
    ..aOS(2, _omitFieldNames ? '' : 'putUrl', protoName: 'putUrl')
    ..aOS(3, _omitFieldNames ? '' : 'url')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PreSignedUrlResponse clone() => PreSignedUrlResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PreSignedUrlResponse copyWith(void Function(PreSignedUrlResponse) updates) => super.copyWith((message) => updates(message as PreSignedUrlResponse)) as PreSignedUrlResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PreSignedUrlResponse create() => PreSignedUrlResponse._();
  PreSignedUrlResponse createEmptyInstance() => create();
  static $pb.PbList<PreSignedUrlResponse> createRepeated() => $pb.PbList<PreSignedUrlResponse>();
  @$core.pragma('dart2js:noInline')
  static PreSignedUrlResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PreSignedUrlResponse>(create);
  static PreSignedUrlResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ErrCode get eC => $_getN(0);
  @$pb.TagNumber(1)
  set eC(ErrCode v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasEC() => $_has(0);
  @$pb.TagNumber(1)
  void clearEC() => clearField(1);
  @$pb.TagNumber(1)
  ErrCode ensureEC() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get putUrl => $_getSZ(1);
  @$pb.TagNumber(2)
  set putUrl($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPutUrl() => $_has(1);
  @$pb.TagNumber(2)
  void clearPutUrl() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get url => $_getSZ(2);
  @$pb.TagNumber(3)
  set url($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUrl() => $_has(2);
  @$pb.TagNumber(3)
  void clearUrl() => clearField(3);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');

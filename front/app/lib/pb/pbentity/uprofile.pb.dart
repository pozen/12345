//
//  Generated code. Do not modify.
//  source: pbentity/uprofile.proto
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

class Uprofile extends $pb.GeneratedMessage {
  factory Uprofile({
    $core.String? id,
    $core.String? groupId,
    $core.String? orgId,
    $core.String? uid,
    $core.String? avatar,
    $core.String? nickname,
    $core.String? status,
    $core.String? des,
    $core.String? homePage,
    $core.String? tags,
    $core.String? themeMode,
    $fixnum.Int64? themeColor,
    $core.String? locale,
    $core.String? timezone,
    $core.bool? useStream,
    $core.String? selectedBot,
    $0.Timestamp? createdAt,
    $0.Timestamp? updatedAt,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (groupId != null) {
      $result.groupId = groupId;
    }
    if (orgId != null) {
      $result.orgId = orgId;
    }
    if (uid != null) {
      $result.uid = uid;
    }
    if (avatar != null) {
      $result.avatar = avatar;
    }
    if (nickname != null) {
      $result.nickname = nickname;
    }
    if (status != null) {
      $result.status = status;
    }
    if (des != null) {
      $result.des = des;
    }
    if (homePage != null) {
      $result.homePage = homePage;
    }
    if (tags != null) {
      $result.tags = tags;
    }
    if (themeMode != null) {
      $result.themeMode = themeMode;
    }
    if (themeColor != null) {
      $result.themeColor = themeColor;
    }
    if (locale != null) {
      $result.locale = locale;
    }
    if (timezone != null) {
      $result.timezone = timezone;
    }
    if (useStream != null) {
      $result.useStream = useStream;
    }
    if (selectedBot != null) {
      $result.selectedBot = selectedBot;
    }
    if (createdAt != null) {
      $result.createdAt = createdAt;
    }
    if (updatedAt != null) {
      $result.updatedAt = updatedAt;
    }
    return $result;
  }
  Uprofile._() : super();
  factory Uprofile.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Uprofile.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Uprofile', package: const $pb.PackageName(_omitMessageNames ? '' : 'pbentity'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'Id', protoName: 'Id')
    ..aOS(2, _omitFieldNames ? '' : 'GroupId', protoName: 'GroupId')
    ..aOS(3, _omitFieldNames ? '' : 'OrgId', protoName: 'OrgId')
    ..aOS(4, _omitFieldNames ? '' : 'Uid', protoName: 'Uid')
    ..aOS(5, _omitFieldNames ? '' : 'Avatar', protoName: 'Avatar')
    ..aOS(6, _omitFieldNames ? '' : 'Nickname', protoName: 'Nickname')
    ..aOS(7, _omitFieldNames ? '' : 'Status', protoName: 'Status')
    ..aOS(8, _omitFieldNames ? '' : 'Des', protoName: 'Des')
    ..aOS(9, _omitFieldNames ? '' : 'HomePage', protoName: 'HomePage')
    ..aOS(10, _omitFieldNames ? '' : 'Tags', protoName: 'Tags')
    ..aOS(11, _omitFieldNames ? '' : 'ThemeMode', protoName: 'ThemeMode')
    ..aInt64(12, _omitFieldNames ? '' : 'ThemeColor', protoName: 'ThemeColor')
    ..aOS(13, _omitFieldNames ? '' : 'Locale', protoName: 'Locale')
    ..aOS(14, _omitFieldNames ? '' : 'Timezone', protoName: 'Timezone')
    ..aOB(15, _omitFieldNames ? '' : 'UseStream', protoName: 'UseStream')
    ..aOS(16, _omitFieldNames ? '' : 'SelectedBot', protoName: 'SelectedBot')
    ..aOM<$0.Timestamp>(17, _omitFieldNames ? '' : 'CreatedAt', protoName: 'CreatedAt', subBuilder: $0.Timestamp.create)
    ..aOM<$0.Timestamp>(18, _omitFieldNames ? '' : 'UpdatedAt', protoName: 'UpdatedAt', subBuilder: $0.Timestamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Uprofile clone() => Uprofile()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Uprofile copyWith(void Function(Uprofile) updates) => super.copyWith((message) => updates(message as Uprofile)) as Uprofile;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Uprofile create() => Uprofile._();
  Uprofile createEmptyInstance() => create();
  static $pb.PbList<Uprofile> createRepeated() => $pb.PbList<Uprofile>();
  @$core.pragma('dart2js:noInline')
  static Uprofile getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Uprofile>(create);
  static Uprofile? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get groupId => $_getSZ(1);
  @$pb.TagNumber(2)
  set groupId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasGroupId() => $_has(1);
  @$pb.TagNumber(2)
  void clearGroupId() => clearField(2);

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
  $core.String get avatar => $_getSZ(4);
  @$pb.TagNumber(5)
  set avatar($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasAvatar() => $_has(4);
  @$pb.TagNumber(5)
  void clearAvatar() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get nickname => $_getSZ(5);
  @$pb.TagNumber(6)
  set nickname($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasNickname() => $_has(5);
  @$pb.TagNumber(6)
  void clearNickname() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get status => $_getSZ(6);
  @$pb.TagNumber(7)
  set status($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasStatus() => $_has(6);
  @$pb.TagNumber(7)
  void clearStatus() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get des => $_getSZ(7);
  @$pb.TagNumber(8)
  set des($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasDes() => $_has(7);
  @$pb.TagNumber(8)
  void clearDes() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get homePage => $_getSZ(8);
  @$pb.TagNumber(9)
  set homePage($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasHomePage() => $_has(8);
  @$pb.TagNumber(9)
  void clearHomePage() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get tags => $_getSZ(9);
  @$pb.TagNumber(10)
  set tags($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasTags() => $_has(9);
  @$pb.TagNumber(10)
  void clearTags() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get themeMode => $_getSZ(10);
  @$pb.TagNumber(11)
  set themeMode($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasThemeMode() => $_has(10);
  @$pb.TagNumber(11)
  void clearThemeMode() => clearField(11);

  @$pb.TagNumber(12)
  $fixnum.Int64 get themeColor => $_getI64(11);
  @$pb.TagNumber(12)
  set themeColor($fixnum.Int64 v) { $_setInt64(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasThemeColor() => $_has(11);
  @$pb.TagNumber(12)
  void clearThemeColor() => clearField(12);

  @$pb.TagNumber(13)
  $core.String get locale => $_getSZ(12);
  @$pb.TagNumber(13)
  set locale($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasLocale() => $_has(12);
  @$pb.TagNumber(13)
  void clearLocale() => clearField(13);

  @$pb.TagNumber(14)
  $core.String get timezone => $_getSZ(13);
  @$pb.TagNumber(14)
  set timezone($core.String v) { $_setString(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasTimezone() => $_has(13);
  @$pb.TagNumber(14)
  void clearTimezone() => clearField(14);

  @$pb.TagNumber(15)
  $core.bool get useStream => $_getBF(14);
  @$pb.TagNumber(15)
  set useStream($core.bool v) { $_setBool(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasUseStream() => $_has(14);
  @$pb.TagNumber(15)
  void clearUseStream() => clearField(15);

  @$pb.TagNumber(16)
  $core.String get selectedBot => $_getSZ(15);
  @$pb.TagNumber(16)
  set selectedBot($core.String v) { $_setString(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasSelectedBot() => $_has(15);
  @$pb.TagNumber(16)
  void clearSelectedBot() => clearField(16);

  @$pb.TagNumber(17)
  $0.Timestamp get createdAt => $_getN(16);
  @$pb.TagNumber(17)
  set createdAt($0.Timestamp v) { setField(17, v); }
  @$pb.TagNumber(17)
  $core.bool hasCreatedAt() => $_has(16);
  @$pb.TagNumber(17)
  void clearCreatedAt() => clearField(17);
  @$pb.TagNumber(17)
  $0.Timestamp ensureCreatedAt() => $_ensure(16);

  @$pb.TagNumber(18)
  $0.Timestamp get updatedAt => $_getN(17);
  @$pb.TagNumber(18)
  set updatedAt($0.Timestamp v) { setField(18, v); }
  @$pb.TagNumber(18)
  $core.bool hasUpdatedAt() => $_has(17);
  @$pb.TagNumber(18)
  void clearUpdatedAt() => clearField(18);
  @$pb.TagNumber(18)
  $0.Timestamp ensureUpdatedAt() => $_ensure(17);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');

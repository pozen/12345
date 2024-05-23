//
//  Generated code. Do not modify.
//  source: pbentity/account.proto
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

class Account extends $pb.GeneratedMessage {
  factory Account({
    $core.String? id,
    $core.String? groupId,
    $core.String? orgId,
    $core.String? uid,
    $core.String? status,
    $fixnum.Int64? balance,
    $fixnum.Int64? cost,
    $fixnum.Int64? costTokens,
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
    if (status != null) {
      $result.status = status;
    }
    if (balance != null) {
      $result.balance = balance;
    }
    if (cost != null) {
      $result.cost = cost;
    }
    if (costTokens != null) {
      $result.costTokens = costTokens;
    }
    if (createdAt != null) {
      $result.createdAt = createdAt;
    }
    if (updatedAt != null) {
      $result.updatedAt = updatedAt;
    }
    return $result;
  }
  Account._() : super();
  factory Account.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Account.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Account', package: const $pb.PackageName(_omitMessageNames ? '' : 'pbentity'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'Id', protoName: 'Id')
    ..aOS(2, _omitFieldNames ? '' : 'GroupId', protoName: 'GroupId')
    ..aOS(3, _omitFieldNames ? '' : 'OrgId', protoName: 'OrgId')
    ..aOS(4, _omitFieldNames ? '' : 'Uid', protoName: 'Uid')
    ..aOS(5, _omitFieldNames ? '' : 'Status', protoName: 'Status')
    ..aInt64(6, _omitFieldNames ? '' : 'Balance', protoName: 'Balance')
    ..aInt64(7, _omitFieldNames ? '' : 'Cost', protoName: 'Cost')
    ..aInt64(8, _omitFieldNames ? '' : 'CostTokens', protoName: 'CostTokens')
    ..aOM<$0.Timestamp>(9, _omitFieldNames ? '' : 'CreatedAt', protoName: 'CreatedAt', subBuilder: $0.Timestamp.create)
    ..aOM<$0.Timestamp>(10, _omitFieldNames ? '' : 'UpdatedAt', protoName: 'UpdatedAt', subBuilder: $0.Timestamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Account clone() => Account()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Account copyWith(void Function(Account) updates) => super.copyWith((message) => updates(message as Account)) as Account;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Account create() => Account._();
  Account createEmptyInstance() => create();
  static $pb.PbList<Account> createRepeated() => $pb.PbList<Account>();
  @$core.pragma('dart2js:noInline')
  static Account getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Account>(create);
  static Account? _defaultInstance;

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
  $core.String get status => $_getSZ(4);
  @$pb.TagNumber(5)
  set status($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasStatus() => $_has(4);
  @$pb.TagNumber(5)
  void clearStatus() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get balance => $_getI64(5);
  @$pb.TagNumber(6)
  set balance($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasBalance() => $_has(5);
  @$pb.TagNumber(6)
  void clearBalance() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get cost => $_getI64(6);
  @$pb.TagNumber(7)
  set cost($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasCost() => $_has(6);
  @$pb.TagNumber(7)
  void clearCost() => clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get costTokens => $_getI64(7);
  @$pb.TagNumber(8)
  set costTokens($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasCostTokens() => $_has(7);
  @$pb.TagNumber(8)
  void clearCostTokens() => clearField(8);

  @$pb.TagNumber(9)
  $0.Timestamp get createdAt => $_getN(8);
  @$pb.TagNumber(9)
  set createdAt($0.Timestamp v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasCreatedAt() => $_has(8);
  @$pb.TagNumber(9)
  void clearCreatedAt() => clearField(9);
  @$pb.TagNumber(9)
  $0.Timestamp ensureCreatedAt() => $_ensure(8);

  @$pb.TagNumber(10)
  $0.Timestamp get updatedAt => $_getN(9);
  @$pb.TagNumber(10)
  set updatedAt($0.Timestamp v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasUpdatedAt() => $_has(9);
  @$pb.TagNumber(10)
  void clearUpdatedAt() => clearField(10);
  @$pb.TagNumber(10)
  $0.Timestamp ensureUpdatedAt() => $_ensure(9);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');

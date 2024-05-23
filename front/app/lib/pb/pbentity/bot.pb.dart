//
//  Generated code. Do not modify.
//  source: pbentity/bot.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'message.pb.dart' as $0;

/// 翻译上面的结构定义为protobuf
class ModelAnswer extends $pb.GeneratedMessage {
  factory ModelAnswer({
    $core.String? answer,
    $core.int? score,
    $core.String? error,
    $core.int? tokenCount,
    $core.double? tokenPrice,
  }) {
    final $result = create();
    if (answer != null) {
      $result.answer = answer;
    }
    if (score != null) {
      $result.score = score;
    }
    if (error != null) {
      $result.error = error;
    }
    if (tokenCount != null) {
      $result.tokenCount = tokenCount;
    }
    if (tokenPrice != null) {
      $result.tokenPrice = tokenPrice;
    }
    return $result;
  }
  ModelAnswer._() : super();
  factory ModelAnswer.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ModelAnswer.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ModelAnswer', package: const $pb.PackageName(_omitMessageNames ? '' : 'pbentity'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'Answer', protoName: 'Answer')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'Score', $pb.PbFieldType.O3, protoName: 'Score')
    ..aOS(3, _omitFieldNames ? '' : 'Error', protoName: 'Error')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'TokenCount', $pb.PbFieldType.O3, protoName: 'TokenCount')
    ..a<$core.double>(5, _omitFieldNames ? '' : 'TokenPrice', $pb.PbFieldType.OD, protoName: 'TokenPrice')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ModelAnswer clone() => ModelAnswer()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ModelAnswer copyWith(void Function(ModelAnswer) updates) => super.copyWith((message) => updates(message as ModelAnswer)) as ModelAnswer;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ModelAnswer create() => ModelAnswer._();
  ModelAnswer createEmptyInstance() => create();
  static $pb.PbList<ModelAnswer> createRepeated() => $pb.PbList<ModelAnswer>();
  @$core.pragma('dart2js:noInline')
  static ModelAnswer getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ModelAnswer>(create);
  static ModelAnswer? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get answer => $_getSZ(0);
  @$pb.TagNumber(1)
  set answer($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAnswer() => $_has(0);
  @$pb.TagNumber(1)
  void clearAnswer() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get score => $_getIZ(1);
  @$pb.TagNumber(2)
  set score($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasScore() => $_has(1);
  @$pb.TagNumber(2)
  void clearScore() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get error => $_getSZ(2);
  @$pb.TagNumber(3)
  set error($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasError() => $_has(2);
  @$pb.TagNumber(3)
  void clearError() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get tokenCount => $_getIZ(3);
  @$pb.TagNumber(4)
  set tokenCount($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTokenCount() => $_has(3);
  @$pb.TagNumber(4)
  void clearTokenCount() => clearField(4);

  @$pb.TagNumber(5)
  $core.double get tokenPrice => $_getN(4);
  @$pb.TagNumber(5)
  set tokenPrice($core.double v) { $_setDouble(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasTokenPrice() => $_has(4);
  @$pb.TagNumber(5)
  void clearTokenPrice() => clearField(5);
}

class BotSetting extends $pb.GeneratedMessage {
  factory BotSetting({
    $core.String? modelId,
    $core.String? prompt,
    $core.int? maxHistoryLen,
  }) {
    final $result = create();
    if (modelId != null) {
      $result.modelId = modelId;
    }
    if (prompt != null) {
      $result.prompt = prompt;
    }
    if (maxHistoryLen != null) {
      $result.maxHistoryLen = maxHistoryLen;
    }
    return $result;
  }
  BotSetting._() : super();
  factory BotSetting.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BotSetting.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BotSetting', package: const $pb.PackageName(_omitMessageNames ? '' : 'pbentity'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'ModelId', protoName: 'ModelId')
    ..aOS(2, _omitFieldNames ? '' : 'Prompt', protoName: 'Prompt')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'MaxHistoryLen', $pb.PbFieldType.O3, protoName: 'MaxHistoryLen')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BotSetting clone() => BotSetting()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BotSetting copyWith(void Function(BotSetting) updates) => super.copyWith((message) => updates(message as BotSetting)) as BotSetting;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BotSetting create() => BotSetting._();
  BotSetting createEmptyInstance() => create();
  static $pb.PbList<BotSetting> createRepeated() => $pb.PbList<BotSetting>();
  @$core.pragma('dart2js:noInline')
  static BotSetting getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BotSetting>(create);
  static BotSetting? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get modelId => $_getSZ(0);
  @$pb.TagNumber(1)
  set modelId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasModelId() => $_has(0);
  @$pb.TagNumber(1)
  void clearModelId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get prompt => $_getSZ(1);
  @$pb.TagNumber(2)
  set prompt($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPrompt() => $_has(1);
  @$pb.TagNumber(2)
  void clearPrompt() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get maxHistoryLen => $_getIZ(2);
  @$pb.TagNumber(3)
  set maxHistoryLen($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMaxHistoryLen() => $_has(2);
  @$pb.TagNumber(3)
  void clearMaxHistoryLen() => clearField(3);
}

class Session extends $pb.GeneratedMessage {
  factory Session({
    $core.String? q,
    $core.Iterable<$0.Message>? historyMsgs,
    $core.String? sId,
  }) {
    final $result = create();
    if (q != null) {
      $result.q = q;
    }
    if (historyMsgs != null) {
      $result.historyMsgs.addAll(historyMsgs);
    }
    if (sId != null) {
      $result.sId = sId;
    }
    return $result;
  }
  Session._() : super();
  factory Session.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Session.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Session', package: const $pb.PackageName(_omitMessageNames ? '' : 'pbentity'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'Q', protoName: 'Q')
    ..pc<$0.Message>(2, _omitFieldNames ? '' : 'HistoryMsgs', $pb.PbFieldType.PM, protoName: 'HistoryMsgs', subBuilder: $0.Message.create)
    ..aOS(3, _omitFieldNames ? '' : 'SId', protoName: 'SId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Session clone() => Session()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Session copyWith(void Function(Session) updates) => super.copyWith((message) => updates(message as Session)) as Session;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Session create() => Session._();
  Session createEmptyInstance() => create();
  static $pb.PbList<Session> createRepeated() => $pb.PbList<Session>();
  @$core.pragma('dart2js:noInline')
  static Session getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Session>(create);
  static Session? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get q => $_getSZ(0);
  @$pb.TagNumber(1)
  set q($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasQ() => $_has(0);
  @$pb.TagNumber(1)
  void clearQ() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$0.Message> get historyMsgs => $_getList(1);

  @$pb.TagNumber(3)
  $core.String get sId => $_getSZ(2);
  @$pb.TagNumber(3)
  set sId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSId() => $_has(2);
  @$pb.TagNumber(3)
  void clearSId() => clearField(3);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');

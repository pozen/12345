//
//  Generated code. Do not modify.
//  source: grpc/v1/api.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'api.pb.dart' as $0;

export 'api.pb.dart';

@$pb.GrpcServiceName('grpc.ApiService')
class ApiServiceClient extends $grpc.Client {
  static final _$createTool = $grpc.ClientMethod<$0.CreateToolRequest, $0.CreateToolResponse>(
      '/grpc.ApiService/CreateTool',
      ($0.CreateToolRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CreateToolResponse.fromBuffer(value));
  static final _$getToolList = $grpc.ClientMethod<$0.GetToolListRequest, $0.GetToolListResponse>(
      '/grpc.ApiService/GetToolList',
      ($0.GetToolListRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetToolListResponse.fromBuffer(value));
  static final _$delTools = $grpc.ClientMethod<$0.DelToolsRequest, $0.DelToolsResponse>(
      '/grpc.ApiService/DelTools',
      ($0.DelToolsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.DelToolsResponse.fromBuffer(value));
  static final _$callTool = $grpc.ClientMethod<$0.CallToolRequest, $0.CallToolResponse>(
      '/grpc.ApiService/CallTool',
      ($0.CallToolRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CallToolResponse.fromBuffer(value));
  static final _$preSignedUrl = $grpc.ClientMethod<$0.PreSignedUrlRequest, $0.PreSignedUrlResponse>(
      '/grpc.ApiService/PreSignedUrl',
      ($0.PreSignedUrlRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.PreSignedUrlResponse.fromBuffer(value));
  static final _$createDialog = $grpc.ClientMethod<$0.AddDialogRequest, $0.AddDialogResponse>(
      '/grpc.ApiService/CreateDialog',
      ($0.AddDialogRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.AddDialogResponse.fromBuffer(value));
  static final _$getDialogList = $grpc.ClientMethod<$0.GetDialogListRequest, $0.GetDialogListResponse>(
      '/grpc.ApiService/GetDialogList',
      ($0.GetDialogListRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetDialogListResponse.fromBuffer(value));
  static final _$getDialog = $grpc.ClientMethod<$0.GetDialogDetailRequest, $0.GetDialogDetailResponse>(
      '/grpc.ApiService/GetDialog',
      ($0.GetDialogDetailRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetDialogDetailResponse.fromBuffer(value));
  static final _$delDialog = $grpc.ClientMethod<$0.DelDialogRequest, $0.DelDialogResponse>(
      '/grpc.ApiService/DelDialog',
      ($0.DelDialogRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.DelDialogResponse.fromBuffer(value));
  static final _$getDialogMsgList = $grpc.ClientMethod<$0.GetDialogMsgListRequest, $0.GetDialogMsgListResponse>(
      '/grpc.ApiService/GetDialogMsgList',
      ($0.GetDialogMsgListRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetDialogMsgListResponse.fromBuffer(value));
  static final _$addDialogMsg = $grpc.ClientMethod<$0.AddDialogMsgRequest, $0.AddDialogMsgResponse>(
      '/grpc.ApiService/AddDialogMsg',
      ($0.AddDialogMsgRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.AddDialogMsgResponse.fromBuffer(value));
  static final _$getProfile = $grpc.ClientMethod<$0.GetProfileRequest, $0.GetProfileResponse>(
      '/grpc.ApiService/GetProfile',
      ($0.GetProfileRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetProfileResponse.fromBuffer(value));
  static final _$updateProfile = $grpc.ClientMethod<$0.UpdateProfileRequest, $0.UpdateProfileResponse>(
      '/grpc.ApiService/UpdateProfile',
      ($0.UpdateProfileRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UpdateProfileResponse.fromBuffer(value));
  static final _$getAccount = $grpc.ClientMethod<$0.GetAccountRequest, $0.GetAccountResponse>(
      '/grpc.ApiService/GetAccount',
      ($0.GetAccountRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetAccountResponse.fromBuffer(value));

  ApiServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.CreateToolResponse> createTool($0.CreateToolRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createTool, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetToolListResponse> getToolList($0.GetToolListRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getToolList, request, options: options);
  }

  $grpc.ResponseFuture<$0.DelToolsResponse> delTools($0.DelToolsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delTools, request, options: options);
  }

  $grpc.ResponseFuture<$0.CallToolResponse> callTool($0.CallToolRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$callTool, request, options: options);
  }

  $grpc.ResponseFuture<$0.PreSignedUrlResponse> preSignedUrl($0.PreSignedUrlRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$preSignedUrl, request, options: options);
  }

  $grpc.ResponseFuture<$0.AddDialogResponse> createDialog($0.AddDialogRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createDialog, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetDialogListResponse> getDialogList($0.GetDialogListRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getDialogList, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetDialogDetailResponse> getDialog($0.GetDialogDetailRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getDialog, request, options: options);
  }

  $grpc.ResponseFuture<$0.DelDialogResponse> delDialog($0.DelDialogRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delDialog, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetDialogMsgListResponse> getDialogMsgList($0.GetDialogMsgListRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getDialogMsgList, request, options: options);
  }

  $grpc.ResponseFuture<$0.AddDialogMsgResponse> addDialogMsg($0.AddDialogMsgRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addDialogMsg, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetProfileResponse> getProfile($0.GetProfileRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getProfile, request, options: options);
  }

  $grpc.ResponseFuture<$0.UpdateProfileResponse> updateProfile($0.UpdateProfileRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateProfile, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetAccountResponse> getAccount($0.GetAccountRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAccount, request, options: options);
  }
}

@$pb.GrpcServiceName('grpc.ApiService')
abstract class ApiServiceBase extends $grpc.Service {
  $core.String get $name => 'grpc.ApiService';

  ApiServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.CreateToolRequest, $0.CreateToolResponse>(
        'CreateTool',
        createTool_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CreateToolRequest.fromBuffer(value),
        ($0.CreateToolResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetToolListRequest, $0.GetToolListResponse>(
        'GetToolList',
        getToolList_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetToolListRequest.fromBuffer(value),
        ($0.GetToolListResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DelToolsRequest, $0.DelToolsResponse>(
        'DelTools',
        delTools_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DelToolsRequest.fromBuffer(value),
        ($0.DelToolsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CallToolRequest, $0.CallToolResponse>(
        'CallTool',
        callTool_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CallToolRequest.fromBuffer(value),
        ($0.CallToolResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.PreSignedUrlRequest, $0.PreSignedUrlResponse>(
        'PreSignedUrl',
        preSignedUrl_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.PreSignedUrlRequest.fromBuffer(value),
        ($0.PreSignedUrlResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AddDialogRequest, $0.AddDialogResponse>(
        'CreateDialog',
        createDialog_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AddDialogRequest.fromBuffer(value),
        ($0.AddDialogResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetDialogListRequest, $0.GetDialogListResponse>(
        'GetDialogList',
        getDialogList_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetDialogListRequest.fromBuffer(value),
        ($0.GetDialogListResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetDialogDetailRequest, $0.GetDialogDetailResponse>(
        'GetDialog',
        getDialog_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetDialogDetailRequest.fromBuffer(value),
        ($0.GetDialogDetailResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DelDialogRequest, $0.DelDialogResponse>(
        'DelDialog',
        delDialog_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DelDialogRequest.fromBuffer(value),
        ($0.DelDialogResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetDialogMsgListRequest, $0.GetDialogMsgListResponse>(
        'GetDialogMsgList',
        getDialogMsgList_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetDialogMsgListRequest.fromBuffer(value),
        ($0.GetDialogMsgListResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AddDialogMsgRequest, $0.AddDialogMsgResponse>(
        'AddDialogMsg',
        addDialogMsg_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AddDialogMsgRequest.fromBuffer(value),
        ($0.AddDialogMsgResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetProfileRequest, $0.GetProfileResponse>(
        'GetProfile',
        getProfile_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetProfileRequest.fromBuffer(value),
        ($0.GetProfileResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UpdateProfileRequest, $0.UpdateProfileResponse>(
        'UpdateProfile',
        updateProfile_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UpdateProfileRequest.fromBuffer(value),
        ($0.UpdateProfileResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetAccountRequest, $0.GetAccountResponse>(
        'GetAccount',
        getAccount_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetAccountRequest.fromBuffer(value),
        ($0.GetAccountResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.CreateToolResponse> createTool_Pre($grpc.ServiceCall call, $async.Future<$0.CreateToolRequest> request) async {
    return createTool(call, await request);
  }

  $async.Future<$0.GetToolListResponse> getToolList_Pre($grpc.ServiceCall call, $async.Future<$0.GetToolListRequest> request) async {
    return getToolList(call, await request);
  }

  $async.Future<$0.DelToolsResponse> delTools_Pre($grpc.ServiceCall call, $async.Future<$0.DelToolsRequest> request) async {
    return delTools(call, await request);
  }

  $async.Future<$0.CallToolResponse> callTool_Pre($grpc.ServiceCall call, $async.Future<$0.CallToolRequest> request) async {
    return callTool(call, await request);
  }

  $async.Future<$0.PreSignedUrlResponse> preSignedUrl_Pre($grpc.ServiceCall call, $async.Future<$0.PreSignedUrlRequest> request) async {
    return preSignedUrl(call, await request);
  }

  $async.Future<$0.AddDialogResponse> createDialog_Pre($grpc.ServiceCall call, $async.Future<$0.AddDialogRequest> request) async {
    return createDialog(call, await request);
  }

  $async.Future<$0.GetDialogListResponse> getDialogList_Pre($grpc.ServiceCall call, $async.Future<$0.GetDialogListRequest> request) async {
    return getDialogList(call, await request);
  }

  $async.Future<$0.GetDialogDetailResponse> getDialog_Pre($grpc.ServiceCall call, $async.Future<$0.GetDialogDetailRequest> request) async {
    return getDialog(call, await request);
  }

  $async.Future<$0.DelDialogResponse> delDialog_Pre($grpc.ServiceCall call, $async.Future<$0.DelDialogRequest> request) async {
    return delDialog(call, await request);
  }

  $async.Future<$0.GetDialogMsgListResponse> getDialogMsgList_Pre($grpc.ServiceCall call, $async.Future<$0.GetDialogMsgListRequest> request) async {
    return getDialogMsgList(call, await request);
  }

  $async.Future<$0.AddDialogMsgResponse> addDialogMsg_Pre($grpc.ServiceCall call, $async.Future<$0.AddDialogMsgRequest> request) async {
    return addDialogMsg(call, await request);
  }

  $async.Future<$0.GetProfileResponse> getProfile_Pre($grpc.ServiceCall call, $async.Future<$0.GetProfileRequest> request) async {
    return getProfile(call, await request);
  }

  $async.Future<$0.UpdateProfileResponse> updateProfile_Pre($grpc.ServiceCall call, $async.Future<$0.UpdateProfileRequest> request) async {
    return updateProfile(call, await request);
  }

  $async.Future<$0.GetAccountResponse> getAccount_Pre($grpc.ServiceCall call, $async.Future<$0.GetAccountRequest> request) async {
    return getAccount(call, await request);
  }

  $async.Future<$0.CreateToolResponse> createTool($grpc.ServiceCall call, $0.CreateToolRequest request);
  $async.Future<$0.GetToolListResponse> getToolList($grpc.ServiceCall call, $0.GetToolListRequest request);
  $async.Future<$0.DelToolsResponse> delTools($grpc.ServiceCall call, $0.DelToolsRequest request);
  $async.Future<$0.CallToolResponse> callTool($grpc.ServiceCall call, $0.CallToolRequest request);
  $async.Future<$0.PreSignedUrlResponse> preSignedUrl($grpc.ServiceCall call, $0.PreSignedUrlRequest request);
  $async.Future<$0.AddDialogResponse> createDialog($grpc.ServiceCall call, $0.AddDialogRequest request);
  $async.Future<$0.GetDialogListResponse> getDialogList($grpc.ServiceCall call, $0.GetDialogListRequest request);
  $async.Future<$0.GetDialogDetailResponse> getDialog($grpc.ServiceCall call, $0.GetDialogDetailRequest request);
  $async.Future<$0.DelDialogResponse> delDialog($grpc.ServiceCall call, $0.DelDialogRequest request);
  $async.Future<$0.GetDialogMsgListResponse> getDialogMsgList($grpc.ServiceCall call, $0.GetDialogMsgListRequest request);
  $async.Future<$0.AddDialogMsgResponse> addDialogMsg($grpc.ServiceCall call, $0.AddDialogMsgRequest request);
  $async.Future<$0.GetProfileResponse> getProfile($grpc.ServiceCall call, $0.GetProfileRequest request);
  $async.Future<$0.UpdateProfileResponse> updateProfile($grpc.ServiceCall call, $0.UpdateProfileRequest request);
  $async.Future<$0.GetAccountResponse> getAccount($grpc.ServiceCall call, $0.GetAccountRequest request);
}

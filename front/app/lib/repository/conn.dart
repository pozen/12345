//import 'package:grpc/grpc.dart';
import 'package:build_grpc_channel/build_grpc_channel.dart';
import 'package:dio/dio.dart';
//import 'package:grpc/grpc_web.dart' if (dart.library.html) 'package:grpc/grpc_web.dart';

class Conn {
  static Conn? _instance;
  static final dio = Dio(BaseOptions(
    //baseUrl: 'https://api.12345.blue/',
    baseUrl: 'http://127.0.0.1:8000/',
    connectTimeout: Duration(seconds: 120),
    receiveTimeout: Duration(seconds: 120),
    validateStatus: (int? status) {
      return status != null && status > 0;
    },
    headers: {
      //'contentType': Headers.jsonContentType,
      'Access-Control-Allow-Origin': '*',
    },
  ));

  Conn._internal();

  factory Conn() {
    _instance ??= Conn._internal();
    return _instance!;
  }

  static dynamic newGrpcChannel() {
    return buildGrpcChannel(host: 'http://127.0.0.1', port: 8082, secure: false);
    //return buildGrpcChannel(host: 'https://gapi.12345.blue');
    /*return ClientChannel('127.0.0.1',
        port: 8082,
        options: ChannelOptions(
            credentials: ChannelCredentials.insecure(),
            idleTimeout: Duration(seconds: 10)));*/
  }

  //static GrpcWebClientChannel newGrpcChannelWeb() {
  //  return GrpcWebClientChannel.xhr(Uri.parse('127.0.0.1:8082'));
  //}
}

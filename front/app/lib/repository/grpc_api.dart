import 'package:fe_12345/controller/id.dart';
import 'package:fe_12345/pb/grpc/v1/api.pbgrpc.dart';
import 'package:fe_12345/repository/conn.dart';
import 'package:get/get.dart';
import 'package:grpc/service_api.dart' as $grpc;
import 'package:logger/logger.dart';


class GrpcApi {
  static GrpcApi? _instance;
  static late ApiServiceClient _c;
  static dynamic _channel;
  GrpcApi._internal();

  factory GrpcApi() {
    _instance ??= GrpcApi._internal();
    _channel = Conn.newGrpcChannel();
    _c = ApiServiceClient(_channel, interceptors: [Auth()], /*options: $grpc.CallOptions(metadata: {'token': Get.find<IdController>().token_.value})*/);

    return _instance!;
  }

  ApiServiceClient c() {
    return GrpcApi._c;
  }

  void close() {
    _channel.close();
  }

  void resetToken(String token) {
    //_channel = Conn.newGrpcChannel();
    Logger().d('reset token: $token');
    //_c = ApiServiceClient(_channel, interceptors: [Auth()], /*options: $grpc.CallOptions(metadata: {'token': token}, /*providers: [setAuth]*/)*/);
  }
}

/*FutureOr<void> setAuth(Map<String, String> metadata, String uri) {
  IdController id = Get.find();
  Logger().d('setAuth: $uri');
  if (!uri.contains('login')) {
    Logger().d('setAuth: ${id.token_.value}');
    metadata['token'] = id.token_.value;
  }
}*/

class Auth extends $grpc.ClientInterceptor {
  @override
  $grpc.ResponseFuture<R> interceptUnary<Q, R>($grpc.ClientMethod<Q, R> method, Q request,
      $grpc.CallOptions options, $grpc.ClientUnaryInvoker<Q, R> invoker) {
    Logger().d('auth interceptUnary: ${method.path}');
    options = options.mergedWith($grpc.CallOptions(metadata: {'token': Get.find<IdController>().token_.value}));

    return invoker(method, request, options);
/*
    var rsp = invoker(method, request, options);
    try {
      rsp.catchError((e) {
        Logger().d('auth interceptUnary error: $e');
        return rsp;
      });
      return rsp;
    } catch (e) {
      Logger().d('auth interceptUnary error: $e');
      return rsp;
    }
  }*/
}
}

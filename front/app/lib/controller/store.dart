import 'package:dio/dio.dart';
import 'package:fe_12345/pb/grpc/v1/api.pb.dart';
import 'package:fe_12345/repository/grpc_api.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:logger/logger.dart';

class StoreController extends GetxController {
  @override
  Future<void> onInit() async {
    super.onInit();
  }

  Future<String> uploadFile(XFile file) async {
    final rsp =
        await GrpcApi().c().preSignedUrl(PreSignedUrlRequest(objName: file.name));
    if (rsp.eC.code != 0) {
      Logger().e("preSignedUrl error: ${rsp.eC.msg}");
      return "";
    }
    Logger().d("preSignedUrl ${rsp.url}");

    await Dio().put(
      rsp.putUrl,
      data: file.openRead(),
      options: Options(
        //contentType: "application/octet-stream",
        headers: {
          "Content-Length": await file.length(),
        },
      ),
      onSendProgress: (int sentBytes, int totalBytes) {
        double progressPercent = sentBytes / totalBytes * 100;
        Logger().d("uploadFile progress: $progressPercent %");
      },
    );
    return rsp.url;
  }
}

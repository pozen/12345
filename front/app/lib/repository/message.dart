import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart' as dio;
import 'package:fe_12345/controller/id.dart';
import 'package:fe_12345/pb/pbentity/message.pb.dart';
import 'package:fe_12345/repository/conn.dart';
import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:flutter/foundation.dart';
import 'package:flutter_client_sse/constants/sse_request_type_enum.dart';
import 'package:flutter_client_sse/flutter_client_sse.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';

class MessageRepository {
  static final MessageRepository _instance = MessageRepository._internal();

  factory MessageRepository() {
    return _instance;
  }

  MessageRepository._internal() {
    init();
  }

  void init() {
  }

  deleteMessage(int messageId) {
  }

  Future<void> getResponseStream(
      String botId,
      RxList<Message> messages,
      ValueChanged<Message> onResponse,
      ValueChanged<Message> errorCallback,
      ValueChanged<Message> onSuccess) async {
    // return getResponseStream2(botId, messages, onResponse, errorCallback, onSuccess );
    Message message = Message(
        id: '',
        //localid: messages.last.text,
        sid: messages.last.sid,
        content: '',
        r: $fixnum.Int64(3));

    final rs = await Conn.dio.post<dio.ResponseBody>(
      "/stream_api/get_answer_stream",
      options: dio.Options(headers: {
        "Accept": "text/event-stream",
        "Cache-Control": "no-cache",
        "Authorization": Get.find<IdController>().token_.value
      }, responseType: dio.ResponseType.stream), // set responseType to `stream`
      data: {
        'uid': '12345',
        'sid': messages.last.sid,
        'q': messages.last.content,
        'tid': botId,
      },
    );

    Logger().d("bot id: $botId");

    rs.data?.stream
        .transform(unit8Transformer)
        .transform(const Utf8Decoder())
        .transform(stringPreDeal)
        .transform(const LineSplitter())
        .listen(
      (event) {
        // controller.add(event);
        Logger().d(event);
        Logger().d(DateTime.now());

        //sleep(const Duration(milliseconds: 100));

        //if (!event.contains('\n\n') && event.contains('\n')) {
        //  event = event.replaceAll('\n', '');
        //}
        //event.replaceAll('\n\n', '\n');
        event = event.replaceAll('<_>', '\n');
        message.content = message.content + event;
        onResponse(message);
      },
      onDone: () {
        Logger().d("onDone");

        onSuccess(message);
      },
      onError: (error, stackTrace) {
        //  controller.addError(error, stackTrace);
      },
    );
    Logger().d("func end!");
  }

  Future<void> getResponseStream2(
      String botId,
      RxList<Message> messages,
      ValueChanged<Message> onResponse,
      ValueChanged<Message> errorCallback,
      ValueChanged<Message> onSuccess) async {
    Message message = Message(
        id: '',
        //localid: messages.last.text,
        sid: messages.last.sid,
        content: '',
        r: $fixnum.Int64(3));

    SSEClient.subscribeToSSE(
        method: SSERequestType.POST,
        url: 'https://api.12345.blue/stream_api/get_answer_stream',
        header: {
          "Authorization": Get.find<IdController>().token_.value,
          "Accept": "text/event-stream",
          "Cache-Control": "no-cache",
        },
        body: {
          'sid': messages.last.sid,
          'q': messages.last.content,
          'tid': botId,
        }).listen(
      (event) {
        Logger().d('Id: ' + event.id!);
        Logger().d('Event: ' + event.event!);
        Logger().d('Data: ' + event.data!);
        message.content = message.content + event.data!;
        onResponse(message);
      },
      onDone: () {
        Logger().d("onDone");

        onSuccess(message);
      },
      onError: (error, stackTrace) {
        //  controller.addError(error, stackTrace);
      },
    );

    Logger().d("bot id: $botId");

    Logger().d("func end!");
  }

  @override
  getResponse(
      String botId,
      RxList<Message> messages,
      ValueChanged<Message> onResponse,
      ValueChanged<Message> errorCallback,
      ValueChanged<Message> onSuccess) async {
    final rs = await Conn.dio.post<Map<String, dynamic>>(
      "/api/get_answer",
      options: dio.Options(headers: {
        "Content-Type": "application/json",
        "Authorization": Get.find<IdController>().token_.value
      }),
      data: {
        'uid': '12345',
        'sid': messages.last.sid,
        'q': messages.last.content,
        'tid': botId,
      },
    );

    Logger().d("bot id: $botId");

    Logger().d(rs.data);
    if (rs.data!['code'] as int != 0) {
      Logger().e(rs.data!);
      errorCallback(Message(
          id: '',
          sid: messages.last.sid,
          content: rs.data!['msg'],
          r: $fixnum.Int64(3)));
    } else {
      try {
        onSuccess(Message(
            id: '',
            sid: messages.last.sid,
            content: rs.data!['data']['ModelAns']['Answer'],
            r: $fixnum.Int64(3)));
      } catch (e) {
        onSuccess(Message(
            id: '',
            sid: messages.last.sid,
            content: rs.data!['data']['ModelAns'],
            r: $fixnum.Int64(3)));
      }
    }
  }
}

StreamTransformer<Uint8List, List<int>> unit8Transformer =
    StreamTransformer.fromHandlers(
  handleData: (data, sink) {
    sink.add(List<int>.from(data));
  },
);

StreamTransformer<String, String> stringPreDeal =
    StreamTransformer.fromHandlers(
  handleData: (data, sink) {
    String tmp = data.replaceAll('\n\n', '<_>');
    sink.add(tmp);
  },
);

import 'dart:convert';

import 'package:flutter_carrotmarket/data/auth/provider/auth_provider.dart';
import 'package:flutter_carrotmarket/data/chat/model/chat_room.dart';
import 'package:flutter_carrotmarket/data/http_provider.dart';
import 'package:riverpod/riverpod.dart';
import 'package:stomp_dart_client/stomp.dart';
import 'package:stomp_dart_client/stomp_config.dart';
import 'package:stomp_dart_client/stomp_frame.dart';

final chatRepository = Provider<ChatRepository>((ref) => ChatRepository(ref));

class ChatRepository {
  ChatRepository(this._ref);

  final Ref _ref;

  StompClient? _stompClient;

  final _endPoint = "/api/chat";

  Future<ChatRoom?> makeRoom({required int productIdx}) async {
    final response = await _ref.read(httpProvider).post("$_endPoint/room/make/$productIdx");
    if (response.statusCode == 201) {
      print(jsonDecode(response.body));
      return ChatRoom.fromJson(jsonDecode(response.body)["content"]);
    }
    return null;
  }

  Future<ChatRoom?> fetchDetail({required int roomIdx}) async {
    final response = await _ref.read(httpProvider).get("$_endPoint/room/$roomIdx");
    if (response.statusCode == 200) {
      return ChatRoom.fromJson(jsonDecode(response.body)["content"]);
    }
    return null;
  }

  Future<List<ChatRoom>?> fetchRoomList() async {
    final response = await _ref.read(httpProvider).get("$_endPoint/room/list");
    if (response.statusCode == 200) {
      return (jsonDecode(response.body)["content"] as List).map((e) => ChatRoom.fromJson(e)).toList();
    }
    return null;
  }

  void subscribeMessage(Function(ChatRoom newMessage) messageCallback) {
    _stompClient?.deactivate(); // 기존 stomp 있을 시 연결 끊기!

    _stompClient = StompClient(
      config: StompConfig.SockJS(
        url: '${HttpConnector.host}/ws',
        // header에 jst 싣으면 웹에서 사용불가(웹은 웹소켓에 헤더 지원X => 웹도 지원하려면 쿼리스트링으로!)
        webSocketConnectHeaders: {
          "transports": ["websocket"],
          'content-type': 'application/octet-stream',
          'Authorization': _ref.read(authProvider).jwt,
        },
        onConnect: (StompFrame frame) {
          // 웹소켓 연결 되면 구독하기!
          _stompClient?.subscribe(
            destination: '/user/queue/pub',
            // 구독 콜백
            callback: (frame) => messageCallback.call(ChatRoom.fromJson(jsonDecode(frame.body!))),
          );
        },
        // beforeConnect: () async {},
        // onWebSocketError: (dynamic error) => print(error.toString()),
      ),
    );
    _stompClient?.activate();
  }

  void sendMessage({required int roomIdx, required String content}) {
    _stompClient?.send(
      destination: '/chat-socket/chat.send',
      body: json.encode({"content": content, "roomIdx": roomIdx}),
    );
  }
}

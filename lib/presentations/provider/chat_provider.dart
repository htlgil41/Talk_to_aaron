import 'package:flutter/material.dart';
import 'package:talk_to_aaron/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  final List<Message> messageList = [];

  Future<void> sendMessage(String txt) async {
    messageList.add(Message(message: txt, whos: WhosMessgae.me));
    notifyListeners();
  }
}

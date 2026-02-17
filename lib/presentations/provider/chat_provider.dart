import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:talk_to_aaron/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  final Dio dio = Dio();
  final ScrollController scroll = ScrollController();
  final List<Message> messageList = [];

  Future<void> sendMessage(String txt) async {
    if (txt.isEmpty) true;
    messageList.add(Message(message: txt, whos: WhosMessgae.me));

    if (txt.endsWith("?")) {
      messageList.add(await answer());

      notifyListeners();
      scroll.animateTo(
        scroll.position.maxScrollExtent * 2,
        duration: const Duration(microseconds: 420),
        curve: Curves.easeInBack,
      );
      return;
    }

    if (txt.length > 16) {
      messageList.add(await answermia());
    }

    scroll.animateTo(
      scroll.position.maxScrollExtent * 2,
      duration: const Duration(microseconds: 420),
      curve: Curves.easeInBack,
    );
    notifyListeners();
  }

  Future<Message> answer() async {
    final response = await dio.get("https://yesno.wtf/api");
    return Message(
      message: response.data['answer'] == "yes" ? "Si mrk" : "Verga no",
      whos: WhosMessgae.other,
      urlImage: response.data['image'],
    );
  }

  Future<Message> answermia() async {
    return Message(message: "Mira a mia", whos: WhosMessgae.other);
  }

  Future<void> deleteAllMessage() async {
    messageList.clear();
    notifyListeners();
  }
}

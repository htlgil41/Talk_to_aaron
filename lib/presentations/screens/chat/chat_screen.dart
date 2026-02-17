import 'package:flutter/material.dart';
import 'package:talk_to_aaron/presentations/widgets/chat/my_message.dart';
import 'package:talk_to_aaron/presentations/widgets/chat/other_message.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 10,
        backgroundColor: Color.fromRGBO(0, 106, 255, 1),
        leading: CircleAvatar(
          backgroundImage: NetworkImage(
            "https://m.media-amazon.com/images/S/amzn-author-media-prod/3lilb0bc44m73is0rkai1ovbu0._SY450_CR0%2C0%2C450%2C450_.jpg",
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 10),
            child: IconButton(
              onPressed: () {},
              autofocus: true,
              color: Colors.red,
              icon: Icon(Icons.delete_forever_rounded),
            ),
          ),
        ],
        title: Text(
          "Aaron Gil",
          style: TextStyle(
            color: const Color.fromARGB(255, 228, 248, 255),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsetsGeometry.symmetric(vertical: 20, horizontal: 13),
        child: Column(
          spacing: 15,
          children: [
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return index % 2 == 0 ? MyMessage() : OtherMessage();
                },
              ),
            ),
            Text("Hola 2"),
          ],
        ),
      ),
    );
  }
}

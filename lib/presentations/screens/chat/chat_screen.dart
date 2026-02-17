import 'package:flutter/material.dart';

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
        title: Text(
          "Aaron Gil",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Text("Hola mundo!!"),
    );
  }
}

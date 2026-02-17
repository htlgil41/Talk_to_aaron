import 'package:flutter/material.dart';
import 'package:talk_to_aaron/domain/entities/message.dart';

class MyMessage extends StatelessWidget {
  const MyMessage({super.key, required this.message});

  final Message message;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: Color.fromRGBO(0, 106, 255, 1),
          ),
          padding: EdgeInsets.all(15),
          child: Text(
            message.message,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
          ),
        ),
        const SizedBox(height: 5),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class MyMessage extends StatelessWidget {
  const MyMessage({super.key});

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
            "Hola este es un mensaje",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:talk_to_aaron/config/themes/first_themem3.dart';
import 'package:talk_to_aaron/presentations/screens/chat/chat_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Talko to Aaron',
      theme: FirstThemem3().theme(),
      home: ChatScreen(),
    );
  }
}

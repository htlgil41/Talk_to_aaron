import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:talk_to_aaron/config/themes/first_themem3.dart';
import 'package:talk_to_aaron/presentations/provider/chat_provider.dart';
import 'package:talk_to_aaron/presentations/screens/chat/chat_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => ChatProvider())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Talko to Aaron',
        theme: FirstThemem3().theme(),
        home: ChatScreen(),
      ),
    );
  }
}

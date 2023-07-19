import 'package:flutter/material.dart';
import 'package:flutterapp/whatsappHome.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});
final ThemeData theme = ThemeData();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "WhatsApp",
      theme: ThemeData(primaryColor: const Color(0xff075E54),
      colorScheme: theme.colorScheme.copyWith(secondary: const Color(0xff25D366)),
      ),
      home: WhatsApp(),
    );
  }
}
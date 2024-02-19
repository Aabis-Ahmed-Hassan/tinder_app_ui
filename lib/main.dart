import 'package:flutter/material.dart';
import 'package:tinder_app_ui/screens/enter_phone_number.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: EnterPhoneNumber(),
    );
  }
}

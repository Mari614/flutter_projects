import 'package:chat_app/pages/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ScholarChat());
}

class ScholarChat extends StatelessWidget {
  const ScholarChat({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false ,
      home: LoginPage(),
    );
  }
}
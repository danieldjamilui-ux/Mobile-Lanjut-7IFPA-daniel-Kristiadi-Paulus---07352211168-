import 'package:flutter/material.dart';
import '../auth/loginpage.dart'; 

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('flutter Mobile Lanjutan', style: TextStyle(color: Colors.white),),
          backgroundColor: Colors.blue,
        ),
        body: const LoginPage(),
      ),
    );
  }
}
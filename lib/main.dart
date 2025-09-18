import 'package:app/aut/loginPage.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "App 1 arsal",
      home: Scaffold(appBar: AppBar(), body: LoginPage()),
    );
  }
}

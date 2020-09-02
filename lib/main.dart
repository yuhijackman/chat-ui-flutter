import 'package:flutter/material.dart';
import 'package:flutterchatui/screens/home_screen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Char UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.red,
        accentColor:  Color(0xFFFEF9EB)
      ),
      home: HomeScreen()
    );
  }
}

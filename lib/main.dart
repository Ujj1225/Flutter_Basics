// Flutter is Widget over Widget over Widget 
// And every Widget has arguments inside it
// When we use an argument we needt to add another widget inside it 
import 'package:flutter/material.dart';

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
          title: Text('App Title'),
        ),
      ),
    );
  }
}
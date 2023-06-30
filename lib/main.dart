// Flutter is Widget over Widget over Widget
// And every Widget has arguments inside it
// When we use an argument we needt to add another widget inside it
// Put commas after all brackets
// use ctrl>shift>I for fomatting
// Refractor(ctrl>shift>R) is used to wrap with a widget or remove a widget
// Use const to remove blue's for stuffs that will be constant
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
          title: const Text('App Title'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              print('print something');
            },
            child: const Text('Click'),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: 'Settings',
              icon: Icon(Icons.settings),
            )
          ],
        ),
      ),
    );
  }
}

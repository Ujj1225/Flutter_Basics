// Flutter is Widget over Widget over Widget
// And every Widget has arguments inside it
// When we use an argument we needt to add another widget inside it
// Put commas after all brackets
// use ctrl>shift>I for fomatting
// Refractor(ctrl>shift>R) is used to wrap with a widget or remove a widget
// Use const to remove blue's for stuffs that will be constant
// Stateful Widget says that the state is going to change
// setState is used to inform what the change is going to be!
// To make the navigation buttons functional we created a variable buttonIndex
// CurrentIndex is used to change the selected navigation item
// There we used onTap function to actually change the button.
// The onTap function returns the index of the item clicked
// Child only takes one thing so cant add more sorry!
// Main and cross axis for row and coloumns are different so pay attention
// For Styling you need to remember that style: Widget_name.stylefrom()
// Primary is the color of the button and onPrimary is the color of text inside the button
// Primary and onPrimary and deprecated and now backgroundColor and foregroundColor are used in place of 'em
// Using Conditions
// Image network is used to add image from internet directly through the URL
// Next is image asset and widget catalog before i depart to campus

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyWidget(),
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  String buttonName = 'Click Me!';

  int buttonIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App Title'),
      ),
      body: Center(
          child: buttonIndex == 0
              ? Container(
                  width: double.infinity,
                  height: double.infinity,
                  color: const Color.fromARGB(255, 165, 176, 182),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          foregroundColor: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (BuildContext context) {
                                return const secondPage();
                              },
                            ),
                          );
                        },
                        child: Text(buttonName),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(
                            () {
                              buttonName = 'Clicked';
                            },
                          );
                        },
                        child: Text(buttonName),
                      )
                    ],
                  ),
                )
              : Image.asset('images/bg.jpg')),
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
        currentIndex: buttonIndex,
        onTap: (value) {
          setState(
            () {
              buttonIndex = value;
            },
          );
        },
      ),
    );
  }
}

// ignore: camel_case_types
class secondPage extends StatelessWidget {
  const secondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}

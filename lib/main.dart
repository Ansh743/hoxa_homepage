import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'com/widgets/CustomAppBar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({Key key, this.title}) : super(key: key);

  List<Widget> myList = [];
  void fill() {
    for (int i = 0; i < 100; i++) {
      myList.add(Text(
        'Hello $i',
        style: TextStyle(
          fontSize: 10,
        ),
      ));
    }
  }

  final String title;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(),
        body: Container(
          color: Color.fromRGBO(175, 228, 255, 0.1),
          child: ListView(
            dragStartBehavior: DragStartBehavior.down,
            children: [
              
            ],
          ),
        ),
      ),
    );
  }
}

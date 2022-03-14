import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'places',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MySecondWidget(),
    );
  }
}

class MyFirstWidget extends StatelessWidget {
  MyFirstWidget({Key? key}) : super(key: key);

  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    print(++_counter);
    return const Scaffold(
      body: Center(
        child: Text('Hello!'),
      ),
    );
  }
}

class MySecondWidget extends StatefulWidget {
  const MySecondWidget({Key? key}) : super(key: key);

  @override
  _MySecondWidgetState createState() => _MySecondWidgetState();
}

class _MySecondWidgetState extends State<MySecondWidget> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    print(++_counter);
    return const Scaffold(
      body: Center(
        child: Text('Hello!'),
      ),
    );
  }
}

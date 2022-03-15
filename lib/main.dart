import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

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

  @override
  Widget build(BuildContext context) {
    dynamic foo() {
      return context.runtimeType;
    }

    print('this is foo:${foo()}');
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
  dynamic foo() {
    return context.runtimeType;
  }

  @override
  Widget build(BuildContext context) {
    print('this is foo:${foo()}');
    return const Scaffold(
      body: Center(
        child: Text('Hello!'),
      ),
    );
  }
}

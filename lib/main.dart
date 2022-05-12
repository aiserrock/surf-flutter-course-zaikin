import 'package:flutter/material.dart';
import 'package:places/ui/screen/visiting_screen.dart';

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
      // home: SightDetailsScreen(sight: mocks.first),
      // home: const SightListScreen(),
      home: const VisitingScreen(),
    );
  }
}

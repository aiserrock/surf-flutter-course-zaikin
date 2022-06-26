import 'package:flutter/material.dart';
import 'package:places/mocks.dart';
import 'package:places/ui/res/strings.dart';
import 'package:places/ui/res/themes.dart';
import 'package:places/ui/screen/sight_details_screen.dart';
import 'package:places/ui/screen/sight_list_screen.dart';
import 'package:places/ui/screen/visiting_screen.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: StringRes.appName,
      theme: AppTheme.getLightTheme().copyWith(
        extensions: [
          CustomColors.dark,
        ],
      ),
      // home: SightDetailsScreen(sight: mocks.first),
      // home: const SightListScreen(),
      home: const VisitingScreen(),
    );
  }
}

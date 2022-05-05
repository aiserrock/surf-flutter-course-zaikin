import 'package:flutter/material.dart';
import 'package:places/mocks.dart';
import 'package:places/ui/common/widgets/appBar/places_app_bar.dart';
import 'package:places/ui/res/strings.dart';
import 'package:places/ui/res/text_styles.dart';
import 'package:places/ui/screen/sight_card.dart';

/// Экран скарточками "Интересные места"
class SightListScreen extends StatefulWidget {
  const SightListScreen({Key? key}) : super(key: key);

  @override
  _SightListScreenState createState() => _SightListScreenState();
}

class _SightListScreenState extends State<SightListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PlacesAppBar(),
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(children: [
              SightCard(sight: mocks.first),
              const SizedBox(height: 16),
              SightCard(sight: mocks[1]),
              const SizedBox(height: 16),
              SightCard(sight: mocks[2]),
            ]),
          ),
        ),
      ),
      resizeToAvoidBottomInset: false,
    );
  }
}

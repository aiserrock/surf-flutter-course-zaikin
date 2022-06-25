import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/mocks.dart';
import 'package:places/ui/common/widgets/app_bar/places_app_bar.dart';
import 'package:places/ui/common/widgets/bottom_navigation_bar/custom_bottom_bar.dart';
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
      backgroundColor: Theme.of(context).backgroundColor,
      body: BuildCardScreen(sights: mocks, cardType: CardType.search),
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: const CustomBottomBar(current: 0),
    );
  }
}

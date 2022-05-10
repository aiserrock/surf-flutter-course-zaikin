import 'package:flutter/material.dart';
import 'package:places/ui/common/widgets/tabBar/visiting_screen_tabbar.dart';
import 'package:places/ui/res/colors.dart';
import 'package:places/ui/res/strings.dart';
import 'package:places/ui/res/text_styles.dart';

class VisitingScreen extends StatefulWidget {
  const VisitingScreen({Key? key}) : super(key: key);

  @override
  State<VisitingScreen> createState() => _VisitingScreenState();
}

class _VisitingScreenState extends State<VisitingScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Избранное',
            style: StyleRes.medium18,
          ),
          bottom: const PreferredSize(
            preferredSize: Size.fromHeight(60),
            child: VisitingScreenTabBar(),
          ),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        body: const TabBarView(
          children: [
            Center(child: Text('1')),
            Center(child: Text('2')),
          ],
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}

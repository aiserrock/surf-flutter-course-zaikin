import 'package:flutter/material.dart';
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
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(60),
            child: Padding(
              padding: const EdgeInsets.only(
                left: 16.0,
                right: 16.0,
                bottom: 30.0,
              ),
              child: Material(
                type: MaterialType.transparency,
                clipBehavior: Clip.antiAlias,
                borderRadius: BorderRadius.circular(40),
                child: Container(
                  height: 40,
                  color: ColorRes.cardBackground,
                  child: TabBar(
                    indicator: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    labelColor: Colors.white,
                    labelStyle: StyleRes.bold14,
                    unselectedLabelStyle: StyleRes.bold14,
                    unselectedLabelColor: ColorRes.secondaryText,
                    indicatorColor: Colors.transparent,
                    indicatorWeight: 0.0001,
                    tabs: const [
                      Tab(text: StringRes.wantVisit),
                      Tab(text: StringRes.visited),
                    ],
                  ),
                ),
              ),
            ),
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

import 'package:flutter/material.dart';
import 'package:places/ui/res/colors.dart';
import 'package:places/ui/res/strings.dart';
import 'package:places/ui/res/text_styles.dart';

/// кастомный таббар для visiting_screen
class VisitingScreenTabBar extends StatelessWidget {
  const VisitingScreenTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
              Tab(text: StringRes.wantVisitTab),
              Tab(text: StringRes.visitedTab),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:places/ui/res/strings.dart';

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
          color: Theme.of(context).primaryColorDark,
          child: const TabBar(
            tabs: [
              Tab(text: StringRes.wantVisitTab),
              Tab(text: StringRes.visitedTab),
            ],
          ),
        ),
      ),
    );
  }
}

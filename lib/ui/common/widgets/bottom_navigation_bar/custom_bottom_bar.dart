import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:places/ui/res/assets.dart';
import 'package:places/ui/res/strings.dart';

class CustomBottomBar extends StatelessWidget {
  const CustomBottomBar({
    Key? key,
    required this.current,
  }) : super(key: key);

  /// Текущая позиция
  final int current;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: current,
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            IconRes.icList,
            color: Theme.of(context).bottomNavigationBarTheme.selectedItemColor,
          ),
          label: StringRes.bottomBarListTitle,
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            IconRes.icMap,
            color:
                Theme.of(context).bottomNavigationBarTheme.unselectedItemColor,
          ),
          label: StringRes.bottomBarMapTitle,
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            IconRes.icHeartFull,
            color:
                Theme.of(context).bottomNavigationBarTheme.unselectedItemColor,
          ),
          label: StringRes.bottomBarFavoritesTitle,
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            IconRes.icSettings,
            color:
                Theme.of(context).bottomNavigationBarTheme.unselectedItemColor,
          ),
          label: StringRes.bottomBarSettingsTitle,
        ),
      ],
    );
  }
}

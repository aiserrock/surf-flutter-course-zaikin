import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:places/ui/res/assets.dart';

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
      backgroundColor: Colors.white,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      currentIndex: current,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          // backgroundColor: Colors.white,
          icon: SvgPicture.asset(IconRes.icList),
          label: 'Список',
        ),
        BottomNavigationBarItem(
          // backgroundColor: Colors.white,
          icon: SvgPicture.asset(IconRes.icMap),
          label: 'Карта',
        ),
        BottomNavigationBarItem(
          // backgroundColor: Colors.white,
          icon: SvgPicture.asset(IconRes.icHeartFull),
          label: 'Избранное',
        ),
        BottomNavigationBarItem(
          // backgroundColor: Colors.white,
          icon: SvgPicture.asset(IconRes.icSettings),
          label: 'Настройки',
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:places/ui/res/strings.dart';
import 'package:places/ui/res/text_styles.dart';

class PlacesAppBar extends StatelessWidget implements PreferredSizeWidget {
  const PlacesAppBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(92);


  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 40,
      elevation: 0,
      backgroundColor: Colors.white,
      bottom: PreferredSize(
        preferredSize: preferredSize,
        child: Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(StringRes.appBarTitle, style: StyleRes.bold32),
          ),
        ),
      ),
    );
  }
}

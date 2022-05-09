import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:places/ui/res/assets.dart';

/// Кнопка назад в рамках всего приложения
class RowBackButton extends StatelessWidget {
  const RowBackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 8, left: 15),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              height: 32,
              width: 32,
              child: IconButton(
                padding: const EdgeInsets.all(0),
                onPressed: () => Navigator.pop(context),
                icon: SvgPicture.asset(IconRes.icArrowBack,),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

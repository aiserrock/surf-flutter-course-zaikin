import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:places/ui/res/themes.dart';



/// Главная кнопка в рамках всего приложения
class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.textStyle,
    this.icon,
  }) : super(key: key);

  final VoidCallback onPressed;
  final String text;
  final TextStyle? textStyle;
  final String? icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Theme.of(context).extension<CustomColors>()!.green,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            customBorder: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            onTap: onPressed,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (icon != null)
                      Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: SvgPicture.asset(icon!),
                      ),
                    Text(text, style: textStyle),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

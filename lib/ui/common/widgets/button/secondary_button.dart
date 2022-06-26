import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

/// Второстепенная кнопка в рамках всего приложения
class SecondaryButton extends StatelessWidget {
  const SecondaryButton({
    Key? key,
    required this.title,
    required this.icon,
    required this.onPressed,
    this.iconColor,
    this.textStyle,

  }) : super(key: key);

  final String title;
  final String icon;
  final TextStyle? textStyle;
  final Color? iconColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onPressed,
          child: SizedBox(
            height: 40,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 14,
                right: 14,
                top: 8,
                bottom: 8,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(icon, color: iconColor),
                  const SizedBox(width: 8),
                  Text(title, style: textStyle),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// квдартная закругленная кнопка
/// на текущий момент времени используется как кнопка назад
class ButtonRounded extends StatelessWidget {
  const ButtonRounded({
    Key? key,
    required this.size,
    required this.backgroundColor,
    required this.radius,
    required this.icon,
    required this.iconColor,
    required this.onPressed,
    this.elevation,
  }) : super(key: key);
  final double size;
  final Color backgroundColor;
  final double radius;
  final String icon;
  final Color iconColor;
  final VoidCallback onPressed;
  final double? elevation;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ConstrainedBox(
        constraints: BoxConstraints.tight(
          Size(size, size),
        ),
        child: TextButton(
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(radius),
              ),
            ),
            elevation: elevation,
          ),
          child: SvgPicture.asset(
            icon,
            color: iconColor,
          ),
          onPressed: onPressed,
        ),
      ),
    );
  }
}
